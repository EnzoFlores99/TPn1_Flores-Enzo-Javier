Vector AB, AC, AD, BC, DC;
PVector A,B,C,D;
void setup() {
  size(800, 800);
  
  A = new PVector(-1, -2).mult(10);
  B = new PVector(4, -1).mult(10);
  C = new PVector(5, 2).mult(10);
  
  AB = new Vector(A, B);
  BC = new Vector(C, B);
  AC = new Vector(A, C);
  
  // Calcula D usando otro vector
  //AD = new Vector(AB.puntoOrigen, PVector.add(AB.puntoDestino, AC.puntoDestino));
  
  
  //calcula AD restando AC-AB
  AD = new Vector(AC.puntoOrigen, PVector.sub(AC.puntoDestino,AB.puntoDestino));
  
 
  background(255);
  translate(width / 2, height / 2);
  stroke(#FA0A0A);
  AB.dibujar(); // Vector AB Rojo
  stroke(#00FA61); 
  BC.dibujar(); //Vector BC Verde
  stroke(#D1FF0A);
  AC.dibujar(); //Vector AC Amarillo
 // AC.dibujar(color(#00FA61)); // Vector AC
 stroke(#FA690F);
  AD.dibujar(); // Vector BC
  //BC.dibujar( color(#63106C)); // Vector BD
}
