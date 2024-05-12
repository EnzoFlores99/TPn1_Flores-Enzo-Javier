class Vector{
  private PVector puntoOrigen;
  private PVector puntoDestino;
 
  public Vector (PVector puntoOrigen, PVector puntoDestino){
    this.puntoOrigen=puntoOrigen;
    this.puntoDestino=puntoDestino;
  }
  /*
  public Vector(float x1, float y1, float x2, float y2){
  puntoOrigen = new PVector(x1,y1);
  puntoDestino = new PVector (x2,y2);
  }*//
  
 public void sumarVectores(){
  return PVector(v.puntoDestino.x+puntoOrigen.x,puntoDestino.y+puntoOrigen.y);
 }
 public float restarVectores(){
   return new PVector(puntoDestino.x-puntoOrigen.x,puntoDestino.y-puntoOrigen.y);
 }
 public void dibujar(){
   fill(#15CB40);
   line(this.puntoOrigen.x,this.puntoOrigen.y,this.puntoDestino.x,this.puntoDestino.y);
 }
 public PVector getPuntoOrigen(){
   return.this.puntoOrigen;
 }
  public PVector getPuntoDestino(){
   return.this.puntoDestino;
 }
 pubic void setPuntoOrigen(PVector puntoOrigen){
   this.puntoOrigen=puntoOrigen;
 }
 pubic void setPuntoDestino(PVector puntoDestino){
   this.puntoDestino=puntoDestino;
 }
 
}
