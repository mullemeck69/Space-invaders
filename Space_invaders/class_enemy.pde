class Enemy {

  //float xpos, ypos;
  color col;
  
  PVector pos;

  Enemy(color _col, float _xpos, float _ypos) {
    
    pos = new PVector(0,0);
    
    col = _col;
    pos.x = _xpos;
    pos.y = _ypos;
  }

  void run() {
    update();
    render();
  }

  void update() {
    if (frameCount % 180 == 0) {
      pos.y = pos.y + 10;
    }
  }

  void render() {
    fill(col);
    rect(pos.x, pos.y, 30, 20);
  }

  boolean checkCollision(ArrayList<Bullet> bullets) {
    for (Bullet bullet : bullets) {
      if (pos.dist(bullet.pos) < 20) {
        return true;
      }
    }
    return false;
  }
}
