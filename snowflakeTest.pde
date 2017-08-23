float t;
int rx, ry;
static final int NUM_LINES = 5;

void setup(){
  background(0);
  size(700,700);
  frameRate(10);
}
void draw() {
  if (frameCount %100 == 0)
  {
    background(0);
  }
  //background(0);
  stroke(sin ((t+1)/100) * 255, tan(t)*255, cos ((t+1)/150) * 255, random(40,80));
  strokeWeight(random(8,10));
  rx =(int) random(width/2);
  ry = (int) random(height/2);
  
  translate(width/2, height/2);
  
  for (int i = 0; i < NUM_LINES; i++)
  {
    line(0,0, x1(t+i),y1(t+i));
  }
  t+=.2;
  if (t >100){
     t = 0;
  }
}
//
float x1(float t){
  return cos(4*t)*300 * sin(t);
}
float y1(float t){
  return cos(4*t)*300*cos(t);
}

float x2 (float t){
  return rx*cos(t);
}
float y2 (float t){
  return ry*sin(t);
}
//float x2(float t){
//  return sin(t /15)*200 + sin(t)*2 ;
//}
//float y2(float t){
//  return cos(t /20)*200 + cos(t/12) *20;
//}