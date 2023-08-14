float angle = 112;
float radius = 100;

void setup() {
  size(800, 600);
  background(255);
  noStroke();
}

void draw() {
  // No se necesita el ciclo draw en este caso
}

void keyPressed() {
  float x = width / 2 + cos(radians(angle)) * radius;
  float y = height / 2 + sin(radians(angle)) * radius;
  color c = color(random(255), random(255), random(255));

  fill(c);
  drawStar(x, y, 5, 50, 30);
  
  angle += 36; // Cambio de ángulo para la próxima estrella
}

void drawStar(float x, float y, int numPoints, float outerRadius, float innerRadius) {
  float angleIncrement = TWO_PI / numPoints;
  float halfAngleIncrement = angleIncrement / 2.0;
  
  beginShape();
  for (float a = 0; a < TWO_PI; a += angleIncrement) {
    float xOuter = x + cos(a) * outerRadius;
    float yOuter = y + sin(a) * outerRadius;
    vertex(xOuter, yOuter);
    
    float xInner = x + cos(a + halfAngleIncrement) * innerRadius;
    float yInner = y + sin(a + halfAngleIncrement) * innerRadius;
    vertex(xInner, yInner);
  }
  endShape(CLOSE);
}
