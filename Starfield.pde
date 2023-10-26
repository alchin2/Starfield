particle []pList = new particle[100];
PImage creeper, creeper2;
void setup() {
  size(800, 800);
  background(0);
  for (int i = 1; i<pList.length; i++) {
    pList[i]=new particle();
     pList[0]=new oddParticle();
  }
}
void draw() {
  background(0);
  noStroke();
  pList[0].move();
    pList[0].show();
    for (int i = 1; i<pList.length; i++) {
    pList[i].move();
    pList[i].show();
    
}
}
void mousePressed() {
  if (mousePressed) {
      for (int i = 0; i < pList.length; i++) {
    pList[i] = new particle();
    pList[0]= new oddParticle();
  }
    background(0);
  }
  }


class particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  particle() {
    myX=Math.random()*40+381;
    myY=Math.random()*40+381;
    myAngle=Math.random()*6.28;
    mySpeed=Math.random()*5+5;
    myColor = color((int)(Math.random()*255+40), (int)(Math.random()*46+200), (int)(Math.random()*96+200));
  }
  void move() {
    
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  
  void show() {
  stroke(myColor);
  fill(myColor);
  ellipse((int)myX,(int)myY,5,5);
  }
}

class oddParticle extends particle {
  oddParticle() {
    myX=400;
    myY=200;
    mySpeed=15;
    myAngle=0;
  }
  void move(){
     myAngle+=(.1);
   myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
}
  void show(){
    background(0);
  noStroke();
  fill(150, 75, 0);
  rect((int)myX+10, (int)myY+30, 10, 25);
  fill(5, 71, 42);
  triangle((int)myX+15, (int)myY+15, (int)myX, (int)myY+45, (int)myX+30, (int)myY+45);
  triangle((int)myX+15, (int)myY+5, (int)myX+5, (int)myY+30, (int)myX+25, (int)myY+30);
  }
}
