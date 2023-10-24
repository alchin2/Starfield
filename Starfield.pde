particle []pList = new particle[100];
PImage creeper, creeper2;
void setup() {
  size(800, 800);
  background(0);
  creeper=loadImage("c1");
  creeper2=loadImage("c2");
  for (int i = 1; i<pList.length; i++) {
    pList[0]=new oddParticle();
    pList[i]=new particle();
  }
}
void draw() {
  background(0);
  noStroke();
    for (int i = 1; i<pList.length; i++) {
    pList[0].move();
    pList[0].show();
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
    myX=0;
    myY=600;
  }
  void move(){
    if(myX<425){
    myX+=25;
  }
}
  void show(){
  image(creeper,(float)myX,(float)myY,50,100);
  if (myX==425){
    for(int i = 1;i<pList.length;i++)
    {
    pList[i].move();
    pList[i].show();
    }
  }
  }
}
