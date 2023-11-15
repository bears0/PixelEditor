class Cell{
  int x, y = 0;
  color col = color(255,255,255,255);
  
  Cell(int _x, int _y){
    this.x = _x;
    this.y = _y;
  }
  
  void setColor(color _col){
    this.col = _col;
  }
  
  color getColor(){
    return col;
  }
  
}
