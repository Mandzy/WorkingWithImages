float time;
float f;
PImage landscape;
PImage water;
PImage snowflake;
boolean leaves = false;

void setup(){
  size (800, 600);
  landscape = loadImage ("flatLandscape.jpg");
  water = loadImage ("water.jpg");
  snowflake = loadImage ("snowflakes.jpg");
  time = 0;
  f = 60;
  
}

void draw (){
  background (landscape);
  time += 1;
  if (time < f) {
  filter (GRAY);
  blend (water, 0, 0, 1300, 866, 0, 0, 800, 600, DARKEST);
  } 
  if (time > f) {
    filter (GRAY);
    blend (snowflake, 0, 0, 1920, 1080, 0, 0, width, height, ADD);
    if (time == f*2) {
      leaves = true;
    }
  }
  if (leaves == true){
    
  }
}