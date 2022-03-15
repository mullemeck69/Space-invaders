class Cannon {

  float xpos;

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
    }
    constrain(xpos, 0, width);
    if (xpos<0){
      xpos=0;
    }
     if (xpos>width){
      xpos=width;
    }
    
   
  }

  void render() {
    rectMode(CENTER);
    fill(255);
    rect(xpos, height - 30, 100, 10);
  }
}
