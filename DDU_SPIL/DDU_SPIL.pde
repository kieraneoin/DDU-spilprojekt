ArrayList<kanonkugle> kugleList = new ArrayList<kanonkugle>();
ArrayList<fjende> fjendeList = new ArrayList<fjende>();
spilleren s = new spilleren();
levels l = new levels();
menu m = new menu();
PImage baggrund;
PImage spilleren;
PImage fjenden;
PImage forsiden;


void settings() {
  size(900, 600);
}

void setup() {

  restart();
}


void draw() {
  clear();
  image(baggrund, 0, 0);

  if (!m.playTrykket) {
    m.display();
    m.musKlik();
    return;
  }


  s.display();
  s.vaegge();
  s.moveSpiller();
  s.skyd();
  s.win();
  



  for (int i = 0; i<kugleList.size(); i++) {
    kanonkugle k = kugleList.get(i);
    k.display();
    k.move();
  }

  for (int i = 0; i < fjendeList.size(); i++) {
    fjende f = fjendeList.get(i);
    f.display();
    f.move();
  }

  for (int i = 0; i < kugleList.size()-1; i++) {
    kanonkugle k2 = kugleList.get(i);

    for (int j = 0; j<fjendeList.size(); j++) {
      fjende f = fjendeList.get(j);

      if (dist(kugleList.get(i).posX, kugleList.get(i).posY, fjendeList.get(j).xPos, fjendeList.get(j).yPos) < 35) {
        println("Habibi");
        kugleList.remove(i);
        fjendeList.remove(j);
      }
    }
  }
}


void restart() {
  frameRate(60);
  loop();
  textFont(createFont("Arial", 14));
  fjendeList.clear();
  kugleList.clear();
  baggrund = loadImage("baggrund.png");
  spilleren = loadImage("spilleren.png");
  fjenden = loadImage("fjenden.png");
  forsiden = loadImage("forsiden.png");
  l.level1();

  s.RykPaaPlads();
  s.running = true;
}


void keyPressed() {

  if (keyCode== UP) {
  }

  if (keyCode== DOWN) {
  }

  if (key == 'r'||key== 'R') {
    restart();
  }
}                       
