ArrayList<kanonkugle> list2 = new ArrayList<kanonkugle>();
fjende[] list = new fjende[20];
spilleren s = new spilleren();
//float posX, posY; 


void settings() {
  size(900, 600);
}

void setup() {
  frameRate(60);

  for (int i = 0; i < list.length; i++) {
    list[i] = new fjende(random(1000, 1100), random(0, height), -0.5, 0);
  }
}

void draw() {
  clear();
  background(135, 206, 250);
  s.display();
  s.vaegge();
  s.moveSpiller();

  if (keyPressed && key == ' ') {
    list2.add(new kanonkugle(s.posX, s.posY));
  }

  for (int i = 0; i<list2.size(); i++) {
    kanonkugle k = list2.get(i);
    k.display();
    k.move();
  }

  for (int i = 0; i < list.length; i++) {
    list[i].display();
    list[i].move();
  }
  
}

void keyPressed() {

  if (keyCode== UP) {
  }

  if (keyCode== DOWN) {
  }
}
