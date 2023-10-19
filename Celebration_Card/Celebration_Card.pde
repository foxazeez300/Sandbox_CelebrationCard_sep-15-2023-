//Global Variables
int appWidth, appHeight;
String title="Happy Birthday";
PFont titleFont;
color resetDefaultInk=#FFFFFF;
int sizeFont, size;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
//
PImage picBackground;
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  size(800,400);
  picBackground = loadImage("mountain-6086083_640.jpg");
  //
  //fullScreen();
  size(800,400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  //Concatenation of Pathways
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  String BackgroundImage = "mountain-6086083_640.jpg";
  println(imagesPath + landScapeImage + BackgroundImage);
  picBackground = loadImage( imagesPath + landScapeImage + BackgroundImage);
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect( xTitle, yTitle, widthTitle, heightTitle ); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);1
  titleFont = createFont("ForteMT", 55);
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  //Drawing Text, copied for each line of text
  //fill( [colourName] ); //ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60; //integer number
  textFont( titleFont, size ); // states which font to use
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(resetDefaultInk); //ink
  image(picBackground, 0, 0);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
