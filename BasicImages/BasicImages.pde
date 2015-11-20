PImage rune;


void setup () {
  size (800,600);
  rune = loadImage("Angelic_Rune.png");
}

void draw() {
  tint(250);
  image(rune, mouseX, mouseY);
  tint(50, 150, 50);
  image (rune, random(width), random(height), rune.width/2, rune.height/2);
  
}