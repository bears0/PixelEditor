int[] widths = {300,300,300};
Screen screen;



void setup(){
  size(900, 700);
  screen = new Screen(3, widths);
}

void draw(){
  background(51);
  screen.show();
  testHover();
}

void testHover(){
  screen.checkCanvasHover(mouseX, mouseY);
}
