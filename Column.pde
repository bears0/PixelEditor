class Column{
  int w;
  int startX;
  
  Column(int _w, int _startX){
    this.w = _w;
    this.startX = _startX;
  }
  
  void show(){
    fill(200);
    rect(startX, 0, w, height);
  }
  
}
