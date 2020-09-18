class spilleren {

  boolean running = true;


  int H = 594;
  int H2 = 4;

  float posX, posY; 
  float xPos, yPos;
  float xSpeed, ySpeed;

  spilleren() {
    posX = 100;
    posY = 350;
  }

  void moveSpiller() {
    if (!running) return;

    if (keyPressed && keyCode== UP) {
      posY -= 5;
    }
    if (keyPressed && keyCode== DOWN) {
      posY += 5;
    }
  }

  void display() {
    noStroke();
    image(spilleren, posX-75, posY-50);
    //ellipse(posX, posY, 30, 30);
    //rect(posX+5, posY-5, 20, 10);
  }

  void kanonkugle() {
    ellipse(posX+5, posY+5, 10, 10);
  }

  void skyd() {
    if (!running) return;

    if (keyPressed && key == ' ') {
      kugleList.add(new kanonkugle(s.posX, s.posY));
    }
  }

  void RykPaaPlads() {
    s.posX = 100;
    s.posY = 350;
  }

  void vaegge() {
    if (posY - 10 < H2) { 
      posY = H2 + 10;
    }
    if (posY + 10 > H) { 
      posY = H - 10;
    }
  }


  void win() {
    textFont(createFont("Arial", 14));
    if (fjendeList.size() <= 0) {
      s.running = false; 
      textSize(60);
      text("Level Completed", 20, 75);
      rect(550, 25, 80, 50);
      fill(0);
      textSize(15);
      text("Next level \n Press 'N'", 555, 45);
      fill(255);
      rect(700, 25, 90, 50);
      fill(0);
      textSize(15);
      text("Replay level \n  Press 'R'", 705, 45);
      fill(255);
    }



    if (keyPressed && key ==  'n' ||key== 'N') {
      l.level2();
    }
  }

  void lost() {
    println();
    xSpeed = 0;
    noLoop();
    textSize(40);
    text("You Lost... Press 'R' to try again", 250, 85);
  }
}
