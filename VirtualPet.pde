import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
  size(400,400);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw(){
  int y = arduino.analogRead(5);
  if(y>260){
    y=260;
  }
  if(y < 30){
    background(255,0,0);
  } else {
    background(2,232,230);
  }
  drawBody(200,200);
  drawFace(200,300-y/2);
  drawMouse(200-y,350);
}
private void drawFace(int posX, int posY){
  fill(0,0,0);
  //Ears
  triangle(posX + 60, posY - 60, posX + 30, posY - 50, posX + 50, posY - 30);
  triangle(posX - 60, posY - 60, posX - 30, posY - 50, posX - 50, posY - 30);
  //Face circle
  ellipse(posX, posY, 120, 120);
  //Eyes
  fill(255,255,255);
  ellipse(posX+20, posY-20, 20, 20);
  ellipse(posX-20, posY-20, 20, 20);
  fill(255,0,0);
  ellipse(posX+20, posY-15, 10, 10);
  ellipse(posX-20, posY-15, 10, 10);
 
  //Nose
  fill(250,118,198);
  ellipse(posX, posY, 5, 10);
 
  //Mouth
  triangle(posX, posY+20, posX+20, posY+30, posX-20, posY+30);
 
  //Whiskers
  fill(0,0,0);
  line(posX + 30, posY+10, posX + 100, posY+10);
  line(posX + 30, posY, posX + 100, posY-20);
  line(posX + 30, posY + 20, posX + 100, posY+40);
 
  line(posX - 30, posY+10, posX - 100, posY+10);
  line(posX - 30, posY, posX - 100, posY-20);
  line(posX - 30, posY + 20, posX - 100, posY+40);
 
}
private void drawBody(int posX, int posY){
  //Legs
  rect(posX + 20, posY+60, 20, 100);
  rect(posX - 40, posY+60, 20, 100);
  //Feet
  stroke(142,135,139);
  arc(posX + 30, posY + 160, 20, 20, PI, 2 * (PI));
  arc(posX - 30, posY + 160, 20, 20, PI, 2 * (PI));
  //Body
  stroke(0,0,0);
  ellipse(posX, posY+60, 80, 120);
}
private void drawMouse(int posX, int posY){
  //Body
  fill(121,119,119);
  ellipse(posX + 30, posY, 60, 30);
  ellipse(posX - 15, posY, 30, 5);
  //Eye
  fill(0,0,0);
  ellipse(posX+45, posY-3, 5,5);
  //Ear
  fill(252,135,219);
  ellipse(posX+45, posY-15, 7,15);
  fill(0,0,0);
}
