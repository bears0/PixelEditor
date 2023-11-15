int[] widths = {300,300,300};
Screen screen;
color pickedColor = color(255,0,0);
ColorWheel wheel = new ColorWheel(10,400,10);


void setup(){
  size(900, 700);
  screen = new Screen(3, widths);
  frameRate(240);
}

void draw(){
  background(51);
  screen.show();
  processClicks();
  wheel.show();

  //screen.checkCanvasHover(mouseX, mouseY);
}

void processClicks(){
  if(mousePressed && screen.inCanvas(mouseX,mouseY)){
    screen.clickCell(mouseX, mouseY, pickedColor);
  }
  
  if(mousePressed && screen.inColPicker(mouseX,mouseY)){
    pickedColor = screen.getPickedColor(mouseX, mouseY);
  }
}
