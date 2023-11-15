class Screen{
  int count;
  ArrayList<Column> columnList = new ArrayList<Column>();
  Canvas canvas;
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
    
    canvas.show();
  }
  
  void checkCanvasHover(int mx, int my){
    
  }
  
}
