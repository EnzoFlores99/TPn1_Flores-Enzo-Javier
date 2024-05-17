class Enemigo{
   ArrayList<Bala> balas;
   private PVector posicionE;
   private PVector posicionBala;
   private float angVision;
   private PImage enemigo;
   float velocidadBala;
  
   /*Constructor parametrizado**/
  public Enemigo(PVector posicionE,  float angVision, float velocidadBala){
    this.posicionE = posicionE;
    this.posicionBala = new PVector(posicionE.x, posicionE.y);
    this.angVision = angVision;
    this.velocidadBala = velocidadBala;
    this.enemigo = requestImage("enemigo.png");
    balas = new ArrayList<Bala>();
  }
  
  /*constructor por defecto**/
  public Enemigo(){
  }
  
   /*muestra a la imagen**/
  public void display(){
    imageMode(CENTER);
    image(enemigo,this.posicionE.x,this.posicionE.y,60,70);
}

public void displayBalas(){
    for (int i = balas.size() - 1; i >= 0; i--) {
      Bala b= balas.get(i);
      b.display();
      darVelocidad();
       if (b.posicion.x < 0 || b.posicion.x > width+5 ||
        b.posicion.y < 0 || b.posicion.y > height) {
        balas.remove(i);
        
     }
    }
  }
public void darVelocidad() {
    for (Bala bala : balas) {
      bala.darVelocidad();
    }
}
public void disparar(PVector direccion) {
  posicionBala.set(posicionE);
    balas.add(new Bala(posicionBala, direccion.copy().setMag(velocidadBala)));
  }
  // Calcular el ángulo entre el enemigo y el jugador//
public boolean detectarJugador(PVector posJugador) {
    
    PVector direccion = PVector.sub( posJugador, posicionE);
    float anguloJugador = PVector.angleBetween(new PVector(1, 0), direccion);
    return anguloJugador < angVision / 2; // Verificar si el jugador está dentro del campo de visión
  }

public PVector getPosicionE(){
    return this.posicionE;
  }
  
  public void setposicionE(PVector posicionE){
    this.posicionE = posicionE;
  }

}
