class Bullet {

  float x, y, w, h;
  float speed, rotation, maxSpeed, minSpeed;
  boolean firing;

  Bullet() {

    x = 100;
    y = -100;
    w = 20;
    h = 10;

    speed = 0;
    rotation = 0;
    maxSpeed =  15;
    minSpeed = 5;
    firing = false;
  }
  void reset() {
    speed = 0;
    firing = false;
    y = -100;
  }
  void run() {
    update();
    render();
  }

  void update() {
    if (firing == true) {
      //if (speed < maxSpeed) {
      //  speed += 2;
      //}
      if (speed > minSpeed) {
        speed -= 0.3;
      }
      //speed = maxSpeed;
      x += cos(rotation) * speed;
      y += sin(rotation) * speed;

      //check for moving out of bounds
      if (x>width||x<0||y>height||y<0) {
        reset();
      }
    }
  }
  void render() {
  }
}
