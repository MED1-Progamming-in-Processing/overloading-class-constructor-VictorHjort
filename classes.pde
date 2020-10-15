Shape square, circle;

float sqSizex = random(10,20);
float sqSizey = random(10,20);
float dia = random(10,20);
float startingx = random(width);
float startingy = random(height);
float xSpeed = random(-20,20);
float ySpeed = random(-20,20);

void setup() {
  size(400, 400);
  square = new Shape(startingx, startingy, xSpeed, ySpeed, sqSizex, sqSizey);
  circle = new Shape(startingx, startingy, xSpeed, ySpeed, dia); 
}

void draw() {
  square.display();
  square.move();
  circle.display();
  circle.move();
}
