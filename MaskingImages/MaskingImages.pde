PImage rune;
PImage music;

void setup () { 
  size (800,600);
  rune = loadImage("Angelic_Rune1.png");
  music = loadImage ("music.png");
  music.mask(rune);
}

void draw () {
  background (map(mouseX, 0, width, 0, 255));
  image(music, mouseX, mouseY);
}