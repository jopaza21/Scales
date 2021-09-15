int oddeven = 0;

void setup(){
  size(400,400);
  noLoop();
}
void draw(){
  for(int y = 0; y <= 400; y+=40){
    for(int x = 0; x <= 400; x+=40){
      scale(x, y);
    }
    oddeven++;
  }
}

void scale(int x, int y){
  bezier(x,y,x,y+50,x+40,y+50,x+40,y);
}
