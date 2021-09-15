int oddeven = 0;
int r = 0;
int g = 0;
int b = 0;

void setup(){
  size(400,400);
  noLoop();
  for(int i = 0; i < height; i++){
    stroke(r, i, b);
    line(0,i,width,i);
  }
}
void draw(){
  noFill();
  stroke(255);
  for(int y = 0; y <= 500; y+=40){
    for(int x = -80; x <= 400; x+=40){
      scale(x, y);
    }
    oddeven++;
  }
}

void scale(int x, int y){
  if(oddeven % 2 == 0){
    bezier(x,y,x,y+50,x+40,y+50,x+40,y);
  } else {
    bezier(x+20,y,x+20,y+50,x+60,y+50,x+60,y);
  }
}