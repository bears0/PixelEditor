class ColorPicker{
  int x, y, rows, cols, size;
  ArrayList<Cell> cells = new ArrayList<Cell>();
  
  ColorPicker(int x, int y, int rows, int cols, int size){
    this.x = x;
    this.y = y;
    this.rows = rows;
    this.cols = cols;
    this.size = size;
    for(int j = 0; j < rows; j++){
      for(int i = 0; i < cols; i++){
        int x1 = i*size;
        int y1 = j*size;
        cells.add(new Cell(x1,y1,size,color((int)random(0,255), (int)random(0,255), (int)random(0,255), 255)));
        //colors.add( new MyColor((int)random(0,255), (int)random(0,255), (int)random(0,255), (int)random(0,255)) );
      }
    }
  }
  
  void show(){
    // Draw cells
    for(int i = 0; i < cells.size(); i++){
      cells.get(i).show(x,y);
    }
  }
  
  boolean inColPicker(int mx, int my){
    if(mx > x && mx < x+(cols*size)){
      if(my > y && my < y+(rows*size)){
        return true;
      }
    }
    return false;
  }
  
  color getColor(int mx, int my){
    for(int i = 0; i < cells.size(); i++){
      if(cells.get(i).isClicked(mx-x,my-y)){
        return cells.get(i).getColor();
      }
    }
    return color(0,0,0);
  }
}
