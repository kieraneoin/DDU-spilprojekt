class fjende {
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;

  fjende(float xP, float yP, float xV, float yV) {
    xPos = xP;
    yPos = yP;
    xSpeed = xV;
    ySpeed = yV;
  }

  void display() {
    ellipse(xPos, yPos, 20, 20);
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
}
