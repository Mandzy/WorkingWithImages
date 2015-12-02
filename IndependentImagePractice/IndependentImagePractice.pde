//defined floats
float time;
float f;
float x1, x2, x3, y1, y2, y3;
float w, h;
float a1, a2, a3;
float q;
//defined PImages
PImage landscape;
PImage snowflake;
PImage snowman1;
PImage snowman2;
PImage snowman3;
PImage holiday;



void setup() {
  //set size
  size (800, 600);
  //loaded images 
  landscape = loadImage ("flatLandscape.jpg");
  snowflake = loadImage ("snowflakes.jpg");
  snowman1 = loadImage ("1snowman.png");
  snowman2 = loadImage ("2snowman.png");
  snowman3 = loadImage ("3snowman.png");
  holiday = loadImage ("happy-holidays-gif.gif");
  //gave variables values
  time = 0;
  f = 60;
  x1= 0;
  x2= 700;
  x3= 0;
  y1= 500;
  y2= 500;
  y3= 495;
  w = 100;
  h = 100;
  a1=2;
  a2=-2;
  a3=2;
  q=1;
}

void draw () {
  //gave image as background
  background (landscape);
  //added time
  time ++ ;
  //after so long have a blend happen
  if (time > f) {
    q ++ ;
    filter (GRAY);
    blend (snowflake, 0, 0, 1920, 1080, 0, 0, width, height, ADD);
    //gave the pieces of the snowman values and acceleration so the fit into a snowman
    image (snowman1, x1, y1, w, h);
    x1 += a1;
    if (x1 > width/2-60) {
      a1=0;
    }
    image (snowman2, x2, y2, w, h);
    x2 += a2;
    if (x2 < width/2-57) {
      a2=0 ;
    }
    image (snowman3, x3, y3, w, h);
    x3 += a3;
    if (x3 > width/2-60) {
      a3=0;
    }
    if (a2==0) {
      image (holiday, 50, 50, 700, 300);
    }
  }
}