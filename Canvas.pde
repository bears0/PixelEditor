class Canvas{
  int x,y,res,size,w,startX,startY, endX, endY;
  ArrayList<MyColor> colors = new ArrayList<MyColor>();
  ArrayList<Cell> cells = new ArrayList<Cell>();
  
  
  Canvas(int _x, int _y, int _res, int _size){
    this.x = _x;
    this.y = _y;
    this.res = _res;
    this.size = _size;
    this.w = (res)*size;
    this.startX = _x - w/2;
    this.startY = _y - w/2;
    this.endX = _x + w/2;
    this.endY = _y + w/2;
    for(int j = 0; j < res; j++){
      for(int i = 0; i < res; i++){
        int x = i*size;
        int y = j*size;
        cells.add(new Cell(x,y,size,color(255,255,255)));
        //colors.add( new MyColor((int)random(0,255), (int)random(0,255), (int)random(0,255), (int)random(0,255)) );
      }
    }
  }
  
  void show(){
    
    
    // Draw cells
    for(int i = 0; i < cells.size(); i++){
      cells.get(i).show(startX, startY);
    }
    
    // Draw vertical lines
    for(int i = 0; i <= res; i++){
      line(startX+(i*size), startY, startX+(i*size),endY);
    }
    // Draw horizontal lines
    for(int i = 0; i <= res; i++){
      line(startX, startY+(i*size), endX,startY+(i*size));
    }
  }
  
  void checkHover(int mx, int my){
    for(int i = 0; i < cells.size(); i++){
      cells.get(i).checkHover(mx-startX, my-startY);
    }
  }
  
  void clickCell(int mx, int my, color col){
    for(int i = 0; i < cells.size(); i++){
      cells.get(i).clickCell(mx-startX, my-startY, col);
    }
  }
  
  boolean inCanvas(int mx, int my){
    if(mx > startX && mx < endX){
      if(my > startY && my < endY){
        //println("true");
        return true;
      }
    }
    //println("false");
    return false;
  }
}
