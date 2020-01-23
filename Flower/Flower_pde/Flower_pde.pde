int r=60;
float ballX;
float ballY;
float ball1;
float ball2;
float xs;
float ys;

void setup() {
  size(600,400);
  background(#43AF76);
  xs = random(5,10);
  ys = random(5,10);
}

void draw(){

  fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/5) {
    ballX=ball1 + r*cos(i);
    ballY=ball2 + r*sin(i);
    ellipse(ballX,ballY,r,r); 
  }
  fill(20,0,100);
  ellipse(ball1,ball2,r*1.2,r*1.2);
  move();
  bounce();
}  

void move() {
  ball1 = ball1 + xs;
  ball2 = ball2 + ys;
}

void bounce() {
  if(ball1 > width || ball1 < 0){
    xs = xs * -1;
  }
  if(ball2 > height || ball2 < 0){
    ys = ys * -1;
  }
}
 
