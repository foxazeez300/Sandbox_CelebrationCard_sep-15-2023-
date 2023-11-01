//Global Variables
int appWidth, appHeight;
String title="Happy Birthday", footer="description", cornor="Thanks";
PFont titleFont, footerFont, cornorFont;
color resetDefaultInk=#FFFFFF, purple=#2C08FF, yellow = #E9FF00;
int sizeFont, size;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
float xCornor, yCornor, widthCornor, heightCornor;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit, QuitR;
Boolean nightmode=false; //Note: clock will automatically turn on
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
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
  //size(800,400);
  picBackground = loadImage("mountain-6086083_640.jpg");
  //
  fullScreen();
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight 
  //
  //Population
  int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>17 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  // DIV
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  xRectQuit = appWidth*1/1.3;
  yRectQuit = appHeight*1/1.20;
  widthRectQuit = appWidth*1/8;
  heightRectQuit = appHeight*1/9; 
  //Concatenation of Pathways
  //
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  //
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  //
  xCornor = xRectQuit;
  yCornor = yRectQuit;
  widthCornor = widthRectQuit;
  heightCornor = heightRectQuit;
  //
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
  rect(xCornor, yCornor, widthCornor, heightCornor); //Quit botton's text
  //rect(); //Copy and Paste this for all rect()s
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);1 Algerian
  titleFont = createFont("ForteMT", 55); //ForteMT
  //textFont("ForteMT");
  footerFont = createFont("ArialMT", 55);
  cornorFont = createFont("ArialMT", 55);
  //Verify the font exists in Processing.Java
  //Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xFooter, yFooter, widthFooter, heightFooter);
  rect( xTitle, yTitle, widthTitle, heightTitle );
  rect(xCornor, yCornor, widthCornor, heightCornor);
  //
  //Drawing Text, copied for each line of text
  fill(purple); //ink
  textAlign(CENTER, BOTTOM); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(titleFont, size);
     text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(yellow); //ink
   textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 120;
  textFont(footerFont, size);
    text ( footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
   textAlign(CENTER, BOTTOM); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(cornorFont, size);
  text ( cornor, xCornor, yCornor, widthCornor, heightCornor );
  //
  //
  //println(brightnessControl, nightmode);
  if ( brightnessControl==true )
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    if ( brightnessNumber<1 ) {
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
    //println(brightnessNumber);
  }
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
  tint ( 60, 55, 40 ); //Blue Light must be limited, i.e. <40    //println(nightmode);
  } else {
    noTint(); //See Processing DOC
    //println(nightmode);
  //
  }
  image(picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect( xTitle, yTitle, widthTitle, heightTitle );
  //rect( xFooter, yFooter, widthFooter, heightFooter );
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  text ( footer, xFooter, yFooter, widthFooter, heightFooter );
  text ( cornor, xCornor, yCornor, widthCornor, heightCornor );
} //End draw
//
void keyPressed() {
 if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
    //Builtin BUG, use Boolean to draw() formulae instead
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
  }
  //
  println(brightnessNumber);
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
