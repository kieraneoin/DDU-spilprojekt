ArrayList<kanonkugle> list2 = new ArrayList<kanonkugle>();
spilleren s = new spilleren();
//float posX, posY; 


void setup() {
  frameRate(50);
  size(400, 400);
}

void draw() {
  clear();
  background(155, 100, 100);
  s.display();
  s.vaegge();
  s.moveSpiller();


  if (keyPressed && key == ' '){
    list2.add(new kanonkugle(s.posX,s.posY));
  }

  for(int i = 0; i<list2.size(); i++){
    kanonkugle k = list2.get(i);
    k.display();
    k.move();
  }

  }

  void keyPressed() {

    if (keyCode== LEFT) {
    }

    if (keyCode== RIGHT) {
    }

    if (keyCode== 32) {
     
    }
  }
