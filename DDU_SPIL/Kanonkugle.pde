class kanonkugle {
  float posX=100, posY=200; 

  kanonkugle(float posKanX, float posKanY) {
    posX = posKanX;
    posY = posKanY;
  }


  void display() {
    ellipse(posX, posY, 10, 10);
  }

  void move() {
    posX = posX + 3;
  }
}
