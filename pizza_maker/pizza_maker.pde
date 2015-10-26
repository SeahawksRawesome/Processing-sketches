void setup(){
  size(1000,1000);
  fill(255,178,102);
  ellipse(500,500,400,400);
  fill(255,0,0);
  ellipse(500,500,350,350);
  fill(255,255,51);
  ellipse(500,500,330,330);
  
}
void draw(){
  if(mousePressed && (mouseButton == RIGHT)){
 PImage football = loadImage("football.ppm.gif");
  football.resize(50,50);
  image(football, mouseX, mouseY);
  }
 if( mousePressed && (mouseButton == LEFT)){
   PImage salami = loadImage("salami.ppm.gif");
  salami.resize(50,50);
  image(salami,mouseX, mouseY);
 }
   
}
