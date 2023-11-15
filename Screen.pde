class Screen{
  int count;
  ArrayList<Column> columnList = new ArrayList<Column>();
  Canvas canvas;
  ColorPicker colPicker = new ColorPicker(20, 20, 3, 10, 25);
  int resolution = 16;

  Screen(int _count, int[] w){
    this.count = _count;
    for(int i = 0; i < _count; i++){
      int sum = 0;
      for(int j = 0; j < i; j++){
        sum += w[j];
      }
      columnList.add(new Column(w[i],sum));
      //print(w[i]);
      //print(", ");
      //println(sum);
    }
    canvas = new Canvas(width/2, height/2+40,resolution,16);
  }
  
  void show(){
    //Show all the columns
    for(int i = 0; i < columnList.size(); i++){
      columnList.get(i).show();
    }
    
    // Show the canvas
    canvas.show();
    
    // Show the color picker
    colPicker.show();
    
    // Render a small preview
    int firstX = (width/2)-(resolution/2*3);
    canvas.render(firstX,100, 3);
    canvas.render(firstX+(3*resolution),100, 3);
    canvas.render(firstX-(3*resolution),100, 3);
    
    canvas.render(firstX,100-(3*resolution), 3);
    canvas.render(firstX+(3*resolution),100-(3*resolution), 3);
    canvas.render(firstX-(3*resolution),100-(3*resolution), 3);
    
    canvas.render(firstX,100+(3*resolution), 3);
    canvas.render(firstX+(3*resolution),100+(3*resolution), 3);
    canvas.render(firstX-(3*resolution),100+(3*resolution), 3);
  }
  
  void checkCanvasHover(int mx, int my){
    canvas.checkHover(mx, my);
  }
  
  void clickCell(int mx, int my, color col){
    canvas.clickCell(mx,my,col);
  }
  
  boolean inCanvas(int mx, int my){
    return canvas.inCanvas(mx,my);
  }
  
  boolean inColPicker(int mx, int my){
    return colPicker.inColPicker(mx,my);
  }
  
  color getPickedColor(int mx, int my){
    return colPicker.getColor(mx,my);
  }
  
}
