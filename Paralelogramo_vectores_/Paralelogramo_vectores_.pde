Vector AB, AC, AD, BC, CD;
PVector A,B,C,D;
void setup() {
  size(800, 800);
  A = new PVector(-1, -2).mult(10);
  B = new PVector(4, -1).mult(10);
  C = new PVector(5, 2).mult(10);
  
  AB = new Vector(B,A);
  BC = new Vector(C, B);
  AC = new Vector(A, C);
  
  //// Calcula D usando otro vector
 // CD = new Vector(AB.puntoOrigen, PVector.add(AB.puntoDestino, AC.puntoDestino));
  // AD =AC.restar(AB);
   //D = B.add(BC.puntoDestino);
  ////calcula AD restando AC-AB
  //AD = new Vector(AC.puntoOrigen, PVector.sub(AC.puntoDestino,AB.puntoDestino));

 

}
void draw(){
  background(255);
  translate(width / 2, height / 2);
  scale(1,-1);
  stroke(0);
  line(-width/2,0,width/2,0);
  line(0,-height/2,0,height/2);
  stroke(#FA0A0A);
  AB.dibujar(); // Vector AB Rojo
 // stroke(#053902); 
 // BC.dibujar(); //Vector BC Verde
 // stroke(#D1FF0A);
 // AC.dibujar(); //Vector AC Amarillo
 //stroke(#0A07F7);//Vector CD azul
// CD.dibujar(); // Vector CD
 stroke(#FA690F);
 AD.dibujar(); // Vector BC
 // println(AC.puntoDestino);
  //println(AC.puntoOrigen);
}
