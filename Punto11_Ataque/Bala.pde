class Bala {
  private PVector posicion;
  private PVector velocidad;
  private PImage guisante;
  
  public Bala(PVector posicion, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
  
   this.guisante =requestImage("guisante.png");
   
  }
  public Bala(){
  }
  
  public void darVelocidad() {
    posicion.add(velocidad);
  }
  
  public void display() {
    imageMode(CENTER);
    image(guisante,posicion.x, posicion.y,20,20);
  }
}
