class Cell{
  int x, y, size = 0;
  color col = color(255,255,255,255);
  
  Cell(int _x, int _y, int _size, color _col){
    this.x = _x;
    this.y = _y;
    this.size = _size;
    this.col = _col;
  }
  
  void show(int startX, int startY){
    fill(col);
    rect(startX+x,startY+y,size,size);
  }
  
  void setColor(color _col){
    this.col = _col;
  }
  
  void checkHover(int mx, int my){
    if(mx > x && mx < x+size){
      if(my > y && my < y+size){
        col = color(51,51,51,255);
      } else {
        col = color(255,255,255,255);
      }
    } else {
      col = color(255,255,255,255);
    }
  }
  
  void clickCell(int mx, int my, color _col){
    if(mx > x && mx < x+size){
      if(my > y && my < y+size){
        col = _col;
      }
    }
  }
  
  boolean isClicked(int mx, int my){
    if(mx > x && mx < x+size){
      if(my > y && my < y+size){
        return true;
      }
    }
    return false;
  }
  
  color getColor(){
    return this.col;
  }
  
}
