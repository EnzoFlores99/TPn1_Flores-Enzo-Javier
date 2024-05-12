class Vector{
  private PVector puntoOrigen;
  private PVector puntoDestino;
 
  public Vector (PVector puntoOrigen, PVector puntoDestino){
    this.puntoOrigen=puntoOrigen;
    this.puntoDestino=puntoDestino;
  }
  public Vector(){
  }

 Vector sumar(Vector v){
   PVector newPuntoOrigen = PVector.add(this.puntoOrigen, v.puntoOrigen);
   PVector newPuntoDestino = PVector.add(this.puntoDestino, v.puntoDestino);
   return new Vector (newPuntoOrigen, newPuntoDestino);
 }
 Vector restar(Vector v){
   PVector newPuntoOrigen = PVector.sub(this.puntoOrigen, v.puntoOrigen);
   PVector newPuntoDestino = PVector.sub(this.puntoDestino, v.puntoDestino);
   return new Vector(newPuntoOrigen,newPuntoDestino);
 }
 public void dibujar(){
   strokeWeight(2);
   line(this.puntoOrigen.x,this.puntoOrigen.y,this.puntoDestino.x,this.puntoDestino.y);
 }
 public PVector getPuntoOrigen(){
   return this.puntoOrigen;
 }
  public PVector getPuntoDestino(){
   return this.puntoDestino;
 }
 public void setPuntoOrigen(PVector puntoOrigen){
   this.puntoOrigen=puntoOrigen;
 }
 public void setPuntoDestino(PVector puntoDestino){
   this.puntoDestino=puntoDestino;
 }
 
}
  
