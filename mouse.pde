float ex=150,ey=150,r=50;
float cx=ex,cy=ey;

void setup(){
  size(600,600);
  background(255);
}

boolean isInsideCircle(float x,float y){
  x-=ex;
  y-=ey;
  boolean a = (x*x)+(y*y)<(r*r) ;
  return a;
}

void draw(){
  background(255);
  float x = mouseX;
  float y = mouseY;
  if((isInsideCircle(x,y))&&(mousePressed)){
    //stroke(0,255,0);
    ex=x-(ex-x);
    ey=y-(ey-y);
  }else stroke(0,0,0);
  ellipse(ex,ey,r*2,r*2);
}
