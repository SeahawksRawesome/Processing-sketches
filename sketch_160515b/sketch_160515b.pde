double birdYVelocity = 0;
int y = 200;
double gravity = .5;
float pipeXPosition = 400;
float pipeXPosition1 = 400;
int random = (int) random(100, 400);
int random1 = (int) random(100, 400);
int score = 0;
void setup(){
  
  size(500, 500);
 
   
}
void mousePressed(){
  birdYVelocity = -3;
}

void draw(){
  text(score, 250, 10);
if(mousePressed){
  mousePressed();
} 
   background(90, 71, 65);
  fill(255, 245, 100);
   ellipse(200 , y, 50, 50);
 y += birdYVelocity;
 birdYVelocity += gravity;
 
 fill(0, 255, 0);
 rect(pipeXPosition, random, 10, 400);
 pipeXPosition += -1;
 if(pipeXPosition == 1){
   pipeXPosition = 500;
   random = (int) random(100, 400);
   intersects(200, y, (int)pipeXPosition, random, 400);
   
}
if(intersects(200, y, (int)pipeXPosition, random, 400)){
 System.exit(0);
}
 
 fill(0, 255, 0);
 rect(pipeXPosition, random - (400 +150), 10, 400);
 pipeXPosition += -1;
 if(pipeXPosition == 1){
   pipeXPosition = 500;
   random = (int) random(100, 400);
   intersects(200, y, (int)pipeXPosition, random, 400);
   
}
if(intersects(200, y, (int)pipeXPosition, random - (400 +150), 400)){
 System.exit(0);
}
 
 
   
}boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 25 && birdY < paddleY + paddleLength && birdX > paddleX-25 && birdX < paddleX+30 && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

