class Shape{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float sizex;
  float sizey;
  boolean wall = true;
  
  //Circle constructor
  Shape(float x, float y, float xSpeed, float ySpeed, float diameter) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
  }
  
  //Square constructor
  Shape(float x, float y, float xSpeed, float ySpeed, float sizex, float sizey) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.sizex = sizex;
    this.sizey = sizey;
  }
  
   void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
      wall = !wall;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
      wall = !wall;
    }
  }
  
  void display() {
    if(wall) {
      fill(0,255,0);
      rect(x, y, sizex, sizey);
    }
    else {
      fill(255,0,0);
      ellipse(x, y, diameter, diameter);
    } 
 }
}
