PImage rune;

void setup () {
  size (800,600);
  rune = loadImage("Angelic_Rune.png");
  
}

void draw() {
  background (0);
  image(rune, mouseX, mouseY);
  
  
  
}