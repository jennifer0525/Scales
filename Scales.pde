// create two different functions for the star shape and the ellipse

void setup() {
  size(500, 500);  
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(255,255,255);
  for (int y = 600; y > -35; y-=35){ 
    for (int x = 600; x > -35; x-=35){ 
      /*
      needs the range to be -35 because of the points of the curve vertex
      have numbers added to it so there's a offset
      */
      starScale(x, y);
      ellipseScale(x, y);
    }
  }
}

void starScale(int x, int y){
  // curvy star shape
  fill ((int)(Math.random()), (int)(Math.random()*150), (int)(Math.random()*20));
    beginShape();
  curveVertex(x+25,y+5);
  curveVertex(x+25,y+5);
  curveVertex(x+20,y+15);
  curveVertex(x+5,y+25);
  curveVertex(x+20,y+35);
  curveVertex(x+25,y+45);
  curveVertex(x+25,y+45);
  endShape();
  beginShape();
  curveVertex(x+25,y+5);
  curveVertex(x+25,y+5);
  curveVertex(x+30,y+15);
  curveVertex(x+45,y+25);
  curveVertex(x+30,y+35);
  curveVertex(x+25,y+45);
  curveVertex(x+25,y+45);
  endShape();
}

void ellipseScale(int x, int y){
  
   // ellipse with gradiant

  int diam = 0;
  float yellow = 255;
  noFill();
  while(diam < 15){
  stroke(yellow,yellow,0);
  ellipse(x+5,y-5,diam+15,diam+5);
  diam++;
  yellow -=255/35.0;
  }
}  
