float time;
PImage landscape;
PImage water;
PImage snowflake;

void setup(){
  size (800, 600);
  landscape = loadImage ("flatLandscape.jpg");
  water = loadImage ("water.jpg");
  snowflake = loadImage ("snowflake.jpg");
  time = 0;
  
}

void draw (){
  background (landscape);
  time += 1;
  if (time < 30) {
  filter (GRAY);
  blend (water, 0, 0, 1300, 866, 0, 0, 800, 600, DARKEST);
  }
  if (time > 30) {
    
    
  
}