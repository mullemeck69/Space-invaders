
Cannon myCannon;

void setup() {
  size(800, 800);

  myCannon = new Cannon(width/2);
}

void draw() {
  background(0);

  myCannon.run();
}
