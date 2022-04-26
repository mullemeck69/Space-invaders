class Enemy {
 
  float xpos, ypos;
  color col;

  Enemy(color _col, float _xpos, float _ypos){
   col = _col;
   xpos = _xpos;
   ypos = _ypos;
   
  }
  
  void run() {
    update();
    render();
  }
  
  void update() {
    if (frameCount % 180 == 0){
      ypos = ypos + 10;
    }
    
  }
  
  void render() {
    fill(col);
    rect(xpos, ypos, 20, 20);
    
  }
  
}
