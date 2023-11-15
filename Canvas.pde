class Canvas{
  int x,y,res,scale;
  ArrayList<MyColor> colors = new ArrayList<MyColor>();
  
  Canvas(int _x, int _y, int _res, int _scale){
    this.x = _x;
    this.y = _y;
    this.res = _res;
    this.scale = _scale;
    for(int i = 0; i < res*res; i++){
      colors.add( new MyColor((int)random(0,255), (int)random(0,255), (int)random(0,255), (int)random(0,255)) );
    }
  }
  
  void show(){
    int w = (res)*scale;
    int startX = x - w/2;
    int startY = y - w/2;
    int endX = x + w/2;
    int endY = y + w/2;
    
    // Draw colors
    for(int i = 0; i < res*res; i++){
      fill(colors.get(i).r, colors.get(i).g, colors.get(i).b, colors.get(i).a);
      int dx = (i*scale) % (16*res);
      int dy = (i / res)*scale;
      rect(startX+dx, startY+dy, scale, scale);
      print(i*scale);
      print(", ");
      print( (i*scale) % res );
      print(", ");
      println(i / res);
    }
    
    // Draw vertical lines
    for(int i = 0; i <= res; i++){
      line(startX+(i*scale), startY, startX+(i*scale),endY);
    }
    // Draw horizontal lines
    for(int i = 0; i <= res; i++){
      line(startX, startY+(i*scale), endX,startY+(i*scale));
    }
  }
  
  void checkHover(int mx, int my){
    
  }
  
}
