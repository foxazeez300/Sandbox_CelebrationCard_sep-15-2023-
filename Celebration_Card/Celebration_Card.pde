//Global Variables
int appWidth, appHight;
float xRect, yRect, WidthRect, HightRect;
float xRect2, yRect2, widthRect2, HeightRect2;
//
void setup() {
  //println & println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height); 
  println("Display Width: "+displayWidth, "\tDisplay Width: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullscreen();
  size(1000, 800);
  int appWidth = width;
  int appHeight = height;
  //
  //population
  xRect = appWidth*0;
  yRect = appHeight*0;
  WidthRect = appWidth;
  HeightRect = appHeight;
  xRect2 = appWidth*0;
  yRect2 = appHeight*0;
  WidthRect2 = appWidth;
  HeightRect2 = appHeight;
} //End setup
//
void draw() {
    rect(xRect, yRect, widthRect, HeightRect);
    rect(xRect2, yRect2, widthRect2, HeightRect2);
} //End draw 
//
void keyPressed() {
  
} //EndPressed
//
void mousePressed() {
 
} //End mousePressed
// 
//End MAIN Program
