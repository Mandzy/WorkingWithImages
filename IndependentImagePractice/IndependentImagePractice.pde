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
  snowman1 = loadImage ("snowman1.png");
  snowman2 = loadImage ("snowman2.png");
  snowman3 = loadImage ("snowman3.png");
  holiday = loadImage ("happy-holidays-gif.gif");
  //gave variables values
  time = 0;
  f = 60;
  x1= 0;
  x2= 700;
  x3= 0;
  y1= 460;
  y2= 500;
  y3= 550;
  w = 50;
  h = 50;
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
    if (x1 > width/2-25) {
      a1=0;
    }
    image (snowman2, x2, y2, w*2, h);
    x2 += a2;
    if (x2 < width/2-50) {
      a2=0 ;
    }
    image (snowman3, x3, y3, w, h);
    x3 += a3;
    if (x3 > width/2-25) {
      a3=0;
    }
    image (holiday, 50,50, 700, 300);

}
}