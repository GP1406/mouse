float ex=300,ey=300,r=50;
float bx=300,by=300,br=150;
boolean c;

void setup(){
  size(600,600);
  background(255);
  c = false;
}

boolean isInsideCircle(float x,float y){
  x-=ex;
  y-=ey;
  boolean a = (x*x)+(y*y)<(r*r) ;
  return a;
}

void draw(){
  float x = mouseX;
  float y = mouseY;
  float rx,ry,xx,yy,xy;
  rx=x-bx;
  ry=y-by;
  xx=rx*rx;
  yy=ry*ry;
  xy=sqrt(xx+yy);
  
  background(255);
  
  if(c&&(br-r>=xy)){
    ex=x;
    ey=y;
  }
  ellipse(bx,by,br*2,br*2);
  ellipse(ex,ey,r*2,r*2);
}

void mousePressed(){
  float x = mouseX;
  float y = mouseY;
  if(isInsideCircle(x,y)){
  c = true;
  }
}
void mouseReleased(){
  c = false;
}