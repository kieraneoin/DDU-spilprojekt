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
    image(fjenden, xPos-25, yPos-50);
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;

    if (xPos < 100) {
      s.lost();
    }
  }
}
