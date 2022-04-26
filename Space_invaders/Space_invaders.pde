
Cannon myCannon;
ArrayList<Bullet> bullets;
Enemy myEnemy;

void setup() {
  size(800, 800);
  
  myCannon = new Cannon(width/2);
  bullets = new ArrayList<Bullet>();
  myEnemy = new Enemy(255, 50, 50);
}

void draw() {
  background(0);
  myEnemy.run();
  myCannon.run();
  
  for(Bullet b : bullets){
    b.run();
  }
  
}
