class spilleren {

  int H = 594;
  int H2 = 4;

  float posX, posY; 

  spilleren() {
    posX = 100;
    posY = 350;
  }

  void moveSpiller() {
    if (keyPressed && keyCode== UP) {
      posY -= 5;
    }
    if (keyPressed && keyCode== DOWN) {
      posY += 5;
    }
  }

  void display() {
    noStroke();
    ellipse(posX, posY, 30, 30);
    rect(posX+5, posY-5, 20, 10);
  }

  void kanonkugle() {
    ellipse(posX+5, posY+5, 10, 10);
  }

  void vaegge() {
    if (posY - 10 < H2) { 
      posY = H2 + 10;
    }
    if (posY + 10 > H) { 
      posY = H - 10;
    }
  }
}
