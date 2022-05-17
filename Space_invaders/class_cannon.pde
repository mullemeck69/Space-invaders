class Cannon {

  float xpos;

  boolean fired = false;

  Cannon(float _xpos) {
    xpos = _xpos;
  }

  void run() {
    update();
    render();
  }

  void update() {

    if (keyPressed) {
      switch(keyCode) {
      case LEFT:
        xpos -= 10;
        break;
      case RIGHT:
        xpos += 10;
        break;
      }

      switch(key) {
      case ' ':
        if (!fired) {
          bullets.add(new Bullet());
          fired = true;
        }
        break;
      }
    }

    if (!keyPressed) {
      fired = false;
    }

    if (xpos<50) {
      xpos=50;
    }
    if (xpos>width - 50) {
      xpos=width - 50;
    }
  }

  void render() {
    rectMode(CENTER);
    fill(255);
    rect(xpos, height - 30, 75, 10);
  }
}
