class Bullet {

  float xpos, ypos;
  float speed;

  Bullet() {

    xpos = myCannon.xpos;
    ypos = height - 30;

    speed = 10;
  }

  void run() {
    update();
    render();
  }

  void update() {
    ypos = ypos - speed;
  }

  void render() {
    fill(255);
    rectMode(CENTER);
    rect(xpos,ypos,5,5);
    
  }
}
