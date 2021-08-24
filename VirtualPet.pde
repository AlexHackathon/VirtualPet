void setup(){
  size(400,400);
}
void draw(){
  background(255,255,255);
  drawBody(200,200,1);
  drawFace(200,200,1);
}
private void drawFace(int posX, int posY, float scale){
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
private void drawBody(int posX, int posY, int scale){
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
