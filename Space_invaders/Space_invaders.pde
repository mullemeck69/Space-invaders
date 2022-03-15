
Cannon myCannon;
Bullet b;
void setup() {
  size(800, 800);

  myCannon = new Cannon(width/2);
  b = new Bullet();
}

void draw() {
  background(0);

  myCannon.run();
}
