void setup() {
  size(800, 600);
  background(255);
  drawPattern();
}

void drawPattern() {
  int numShapes = 50;

  for (int i = 0; i < numShapes; i++) {
    float x = random(width);
    float y = random(height);
    float size = random(20, 100);
    color fillColor = color(random(255), random(255), random(255));

    fill(fillColor);
    noStroke();

    int shapeType = int(random(4));
    if (shapeType == 0) {
      ellipse(x, y, size, size);
    } else if (shapeType == 1) {
      rectMode(CENTER);
      rect(x, y, size, size);
    } else if (shapeType == 2) {
      float h = size * sqrt(3) / 2;
      triangle(x, y - h / 2, x - size / 2, y + h / 2, x + size / 2, y + h / 2);
    } else {
      ellipse(x, y, size * 1.5, size);
    }
  }
}

void draw() {
  // No se hace nada en el ciclo draw()
}
