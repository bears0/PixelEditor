class ColorWheel{
  int x, y, r;
  
  ColorWheel(int _x, int _y, int _r){
    this.x = _x;
    this.y = _y;
    this.r = _r;
    
  }
  
  void show(){
    for(int i = 0; i < 255; i++){
      for(int j = 0; j < 255; j++){
        strokeWeight(1);
        colorMode(HSB, 255);
        stroke(j,i, 255);
        point(j+x,i+y);
      }
    }
  }
  
}
