
Cannon myCannon;
ArrayList<Bullet> bullets;

void setup() {
  size(800, 800);

  myCannon = new Cannon(width/2);
  bullets = new ArrayList<Bullet>();
}

void draw() {
  background(0);

  myCannon.run();
  
  for(Bullet b : bullets){
    b.run();
  }
  
}
