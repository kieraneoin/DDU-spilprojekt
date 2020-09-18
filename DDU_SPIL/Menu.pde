int posXMenu = 350;
int posYMenu = 350;

class menu {

  boolean playTrykket = false;
  boolean quitTrykket = false;

  void display() {
    fill(200);
    rect(0, 0, 900, 600);
    image(forsiden, 0, 0);
    fill(153, 50, 204);
    rect(posXMenu, posYMenu+50, 200, 75);
    rect(posXMenu, posYMenu+150, 200, 75);
    fill(0);
    textSize(32);
    text("Play", posXMenu+65, posYMenu+100);
    text("Quit", posXMenu+65, posYMenu+200);
    fill(255);
  }

  void navn() {
    if (playTrykket == false) {
      textFont(createFont("Broadway", 14));
      textSize(50);
      text("CoronApocalypse 2020", 150, 120);
    }
  }

  void musKlik() {
    println("Play=", playTrykket);
    println("Quit=", quitTrykket);
    navn();
    if (mousePressed) {
      if (mouseX >= posXMenu && mouseX <= posXMenu+200 && mouseY >= posYMenu+50 && mouseY <= posYMenu+125) {
        playTrykket = true;
      } else {
        playTrykket = false;

        if (mousePressed) {
          if (mouseX >= posXMenu && mouseX <= posXMenu+150 && mouseY >= posYMenu+150 && mouseY <= posYMenu+225) {
            quitTrykket = true;
            exit();
          } else {
            quitTrykket = false;
          }
        }
      }
    }
  }
}
