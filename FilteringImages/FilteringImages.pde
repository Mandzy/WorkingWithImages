PImage music;

void setup () {
  size (800,600);
  music = loadImage ("music.png");
  
  
}

void draw (){

  image(music, 0, 0, width, height);
  filter (INVERT);
}