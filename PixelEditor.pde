int[] widths = {300,300,300};
Screen screen;
color pickedColor = color(255,0,0);



void setup(){
  size(900, 700);
  screen = new Screen(3, widths);
}

void draw(){
  background(51);
  screen.show();
  if(mousePressed && screen.inCanvas(mouseX,mouseY)){
    screen.clickCell(mouseX, mouseY, pickedColor);
  }
  
  if(mousePressed && screen.inColPicker(mouseX,mouseY)){
    pickedColor = screen.getPickedColor(mouseX, mouseY);
  }
  
  //screen.checkCanvasHover(mouseX, mouseY);
}
