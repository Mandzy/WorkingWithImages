PImage landscape;
PImage water;
PImage snowflake;

void setup(){
  size (800, 600);
  landscape = loadImage ("flatLandscape.jpg");
  water = loadImage ("water.jpg");
  snowflake = loadImage ("snowflake.jpg");
  
}

void draw (){
  background (landscape);
  filter (GRAY);
  blend (water, 0, 0, 1300, 866, 0, 0, 800, 600, DARKEST);


    
    
  
}