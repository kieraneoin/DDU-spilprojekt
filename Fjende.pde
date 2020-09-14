
fjende[] list = new fjende[20];

void setup() {
  fullScreen();


  for (int i = 0; i < list.length; i++) {
    list[i] = new fjende(random(0, width), random(-100, 0), 0, 0.5);
  }
}

void draw() {
  clear();
  for (int i = 0; i < list.length; i++) {
    list[i].display();
    list[i].move();
  }
}
