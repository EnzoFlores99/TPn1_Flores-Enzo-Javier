class Personaje{
  private PImage zombi;
  private PVector origen;
  private PVector destino;
  
  /*Constructor parametrizado**/
  public Personaje(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
   this.zombi = loadImage("zombi.png");
  }
  
  /*constructor por defecto**/
  public Personaje(){
   zombi = loadImage("zombi.png");
  }
  
  /*dibujar el vector**/
  public void display(){
    imageMode(CENTER);
    image(zombi,origen.x, origen.y, 60,80);
    stroke(255);
   line(origen.x, origen.y,enemigo.posicionE.x, enemigo.posicionE.y);
}

  public float conseguirProductoPunto(Personaje personaje){
    return PVector.dot(this.getDestino(), personaje.getDestino());
  }
  
  public PVector getOrigen(){
    return this.origen;
  }
  
  public void setOrigen(PVector origen){
    this.origen = origen;
  }
  
  public PVector getDestino(){
    return this.destino;
  }
  
  public void setDestino(PVector destino){
    this.destino = destino;
  }
  
}
