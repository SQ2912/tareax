float angle = 0;       // Ángulo inicial
float radius = 100;    // Radio del círculo
float speed = 0.02;    // Velocidad de rotación

void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  
  // Calcular la posición de la estrella en función del ángulo y el radio
  float x = width / 2 + cos(angle) * radius;
  float y = height / 2 + sin(angle) * radius;
  
  // Dibujar la estrella
  drawStar(x, y, 30, 70, 5);
  
  // Incrementar el ángulo para hacer que la estrella se mueva en círculos
  angle += speed;
}

// Función para dibujar una estrella en una posición dada
void drawStar(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * radius1;
    sy = y + sin(a + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
