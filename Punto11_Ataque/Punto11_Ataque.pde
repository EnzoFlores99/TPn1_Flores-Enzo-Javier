Personaje personaje;
Personaje vectorPersonajeEnemigo;
Enemigo enemigo;

public void setup(){
  size(600,600);
  personaje = new Personaje(new PVector(0,0), new PVector(1,0));
  enemigo = new Enemigo(new PVector(30,height/2), radians(60), 0.09);
  vectorPersonajeEnemigo = new Personaje();

}
  
  public void draw(){
    background(0); 
   enemigo.display();
   enemigo.displayBalas();
   crearVectorPersonajeEnemigo();
   personaje.setOrigen(new PVector(mouseX,mouseY));
   personaje.display();
   productoPunto();
  
   MostrarMensaje();

  
  if (enemigo.detectarJugador(personaje.getOrigen()) && productoPunto()>-250 ) {
    PVector direccionAlPersonaje = PVector.sub(personaje.getOrigen(), enemigo.getPosicionE()).normalize();
    enemigo.disparar(direccionAlPersonaje);
  }

  }
 public void crearVectorPersonajeEnemigo(){
      vectorPersonajeEnemigo.setOrigen(personaje.getOrigen());
     vectorPersonajeEnemigo.setDestino(PVector.sub(enemigo.getPosicionE(), personaje.getOrigen()));
     vectorPersonajeEnemigo.display();
   } 
 public float productoPunto(){
     float productDot = personaje.conseguirProductoPunto(vectorPersonajeEnemigo);
     return productDot;
     }
public void MostrarMensaje(){
   textSize(15);
   fill(255,255,255);
   text(productoPunto(),20,20);
  if (enemigo.detectarJugador(personaje.getOrigen()) && productoPunto()>-250){
    textSize(25);
    fill(#E02B65);
    text("Estas en la mira",20,50);
    

  }
  else{
   textSize(25);
    fill(#2BE0DF);
    text("No estas al alcance",20,50);
  }
}
