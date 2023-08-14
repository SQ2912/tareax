float posX, posY; // Posición de la elipse
color ellipseColor; // Color de la elipse

void setup() {
  size(800, 600);
  posX = width / 2;
  posY = height / 2;
  ellipseColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  fill(ellipseColor);
  noStroke();
  ellipse(posX, posY, 100, 100);
}

void mousePressed() {
  ellipseColor = color(random(255), random(255), random(255));
}
