ArrayList<kanonkugle> kugleList = new ArrayList<kanonkugle>();
ArrayList<fjende> fjendeList = new ArrayList<fjende>();
spilleren s = new spilleren();




void settings() {
  size(900, 600);
}

void setup() {
  frameRate(60);

  for (int i = 0; i < 20; i++) {
    fjende f =new fjende(random(1000, 1100), random(0, height), -0.5, 0);
      fjendeList.add(f);
   
  }
}


void draw() {
  clear();
  background(135, 206, 250);
  s.display();
  s.vaegge();
  s.moveSpiller();

  if (keyPressed && key == ' ') {
    kugleList.add(new kanonkugle(s.posX, s.posY));
  }

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
      
      if (dist(kugleList.get(i).posX,kugleList.get(i).posY,fjendeList.get(j).xPos,fjendeList.get(j).yPos) < 10){
      println("Habibi");
      kugleList.remove(i);
      fjendeList.remove(j);
  }
}
  }
}

void restart() { 
 
  for (int i = 0; i < 20; i++) {
    fjende f =new fjende(random(1000, 1100), random(0, height), -3, 0);
      fjendeList.add(f);
  }
}

void keyPressed() {

  if (keyCode== UP) {
  }

  if (keyCode== DOWN) {
  }
  
  if (key == 'r'){
    restart();
  
  
}
}
