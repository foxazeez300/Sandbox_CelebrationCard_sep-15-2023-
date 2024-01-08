//Library: use sketch / import
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer player;
String musicFilePath;
int appWidth, appHeight;
String Title="Merry Christmas", Cornor="Thanks";
PFont titleFont, footerFont, cornorFont;
color resetDefaultInk=#FFFFFF;
int sizeFont, size;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
float xCornor, yCornor, widthCornor, heightCornor;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit, QuitR;
Boolean nightmode=false; //Note: clock will automatically turn on
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
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
  yRectQuit = appHeight*1/1.3;
  widthRectQuit = appWidth*1/8;
  heightRectQuit = appHeight*1/9; 
  //
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/100;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*1/10;
  //
  xFooter = appWidth*0; 
  yFooter = appHeight*1/9;
  widthFooter = widthTitle*2;
  heightFooter = heightTitle;
  //
  xCornor = xRectQuit;
  yCornor = yRectQuit;
  widthCornor = widthRectQuit;
  heightCornor = heightRectQuit;
  //
  String up = "..";
  String open = "/";
  String Pathway = up + open;
  String landScapeImage = "imagesUsed/";
  String BackgroundImage = "mountain-6086083_640.jpg";
  println(Pathway + landScapeImage + BackgroundImage);
  //println(Pathway + SongPath + Backgroundsong);
  picBackground = loadImage( Pathway + landScapeImage + BackgroundImage);
  //
  //println("Attempting to load music file: " + musicFilePath);
  println("Initializing setup...");
  initializeMinim();
  println("Setup complete.");
  println("Attempting to load music file: " + musicFilePath);
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect( xTitle, yTitle, widthTitle, heightTitle ); //Image, foreground, near the top
  rect(xCornor, yCornor, widthCornor, heightCornor); //Quit botton's text
  //
  //String[] fontList = PFont.list();
  //printArray(fontList);
  titleFont = createFont("Times New Roman Bold", 48); 
  footerFont = createFont("Times New Roman Bold", 30);
  cornorFont = createFont("Times New Roman Bold", 30);
  //Verify the font exists in Processing.Java
  //Tools / Create Font / Find Font / Do not press "OK", known bug
} //End setup
//
void initializeMinim() {
  minim = new Minim(this);
  //String songPath = "songsUsed/";
  String backgroundSong = "85209__milton__mini-christmas-song.mp3";
  musicFilePath = sketchPath("songsUsed/" + backgroundSong).replace("\\", "/");

  try {
    player = minim.loadFile(musicFilePath);
    player.loop();  // Enable looping
  } catch (Exception e) {
    println("Error loading music file: " + e.getMessage());
    e.printStackTrace();
  }
}
String myName = "Azeez Alaboosi";
String myEmail = "a.al-aboosi@share.epsb.ca";
void drawContactSection() {
  fill(0); // Set text color to black
  textAlign(CENTER, CENTER);

  // Display your name
  textSize(24);
  text("Name: " + myName, width / 2, height - 100);

  // Display your email
  textSize(18);
  text("Email: " + myEmail, width / 2, height - 70);
}
String keyBindsInfo = "Key Binds:\nN - Toggle Nightmode\nUP/DOWN ARROWS - Adjust Brightness";
void draw() {
  background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xFooter, yFooter, widthFooter, heightFooter);
  rect(xTitle, yTitle, widthTitle, heightTitle);
  rect(xCornor, yCornor, widthCornor, heightCornor);
  //
  //Drawing Text, copied for each line of text
  // Drawing Title text
  fill(0); // ink color for title
  textAlign(CENTER, BOTTOM);
  size = 60;
  textFont(titleFont, size);
  text(Title, xTitle, yTitle, widthTitle, heightTitle);

  // Drawing Footer text
  fill(0); // ink color for footer
  textAlign(CENTER, TOP);
  size = 60;
  textFont(footerFont, size);
  // New essay lines
  String line1a = "Dear Hudson,";
String line1b = "Wishing you a Merry Christmas!";
String line2a = "Bro, it's time to give props";
String line2b = "to the holiday maestro—you!";
String line3a = "Your festive vibes, inside jokes,";
String line3b = "make every day feel like a holiday.";
String line4a = "Here's to the guy who turns tinsel";
String line4b = "into treasure, bringing joy to every ho-ho-home.";
String line5 = "Wishing you the merriest Christmas and";
String line6 = "an epic New Year filled with good vibes!";
String line7 = "Cheers,";
//
float gapSize = 55; // Adjust the desired gap size
text(line1a, xFooter, yFooter + 0 * gapSize, widthFooter, heightFooter);
text(line1b, xFooter, yFooter + 1 * gapSize, widthFooter, heightFooter);
text(line2a, xFooter, yFooter + 2 * gapSize, widthFooter, heightFooter);
text(line2b, xFooter, yFooter + 3 * gapSize, widthFooter, heightFooter);
text(line3a, xFooter, yFooter + 4 * gapSize, widthFooter, heightFooter);
text(line3b, xFooter, yFooter + 5 * gapSize, widthFooter, heightFooter);
text(line4a, xFooter, yFooter + 6 * gapSize, widthFooter, heightFooter);
text(line4b, xFooter, yFooter + 7 * gapSize, widthFooter, heightFooter);
text(line5, xFooter, yFooter + 8 * gapSize, widthFooter, heightFooter);
text(line6, xFooter, yFooter + 9 * gapSize, widthFooter, heightFooter);
text(line7, xFooter, yFooter + 10 * gapSize, widthFooter, heightFooter);
 if (player != null && player.isPlaying()) {
  // Add print statements to identify issues
  println("Before player.isPlaying check");
  println("Is player playing? " + player.isPlaying());
  println("After player.isPlaying check");
 }
  // Drawing Cornor (Thanks) text
  fill(#C1C1C1); // black color for "Thanks"
  textAlign(CENTER, BOTTOM);
  size = 60;
  textFont(cornorFont, size);
  text(Cornor, xCornor, yCornor, widthCornor, heightCornor);
  //
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
  //rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect( xTitle, yTitle, widthTitle, heightTitle );
  //rect( xFooter, yFooter, widthFooter, heightFooter );
  text ( Title, xTitle, yTitle, widthTitle, heightTitle );
  //
 text(line1a, xFooter, yFooter + 0 * gapSize, widthFooter, heightFooter);
text(line1b, xFooter, yFooter + 1 * gapSize, widthFooter, heightFooter);
text(line2a, xFooter, yFooter + 2 * gapSize, widthFooter, heightFooter);
text(line2b, xFooter, yFooter + 3 * gapSize, widthFooter, heightFooter);
text(line3a, xFooter, yFooter + 4 * gapSize, widthFooter, heightFooter);
text(line3b, xFooter, yFooter + 5 * gapSize, widthFooter, heightFooter);
text(line4a, xFooter, yFooter + 6 * gapSize, widthFooter, heightFooter);
text(line4b, xFooter, yFooter + 7 * gapSize, widthFooter, heightFooter);
text(line5, xFooter, yFooter + 8 * gapSize, widthFooter, heightFooter);
text(line6, xFooter, yFooter + 9 * gapSize, widthFooter, heightFooter);
text(line7, xFooter, yFooter + 10 * gapSize, widthFooter, heightFooter);
  //
text ( Cornor, xCornor, yCornor, widthCornor, heightCornor );
  //
 drawContactSection();
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
