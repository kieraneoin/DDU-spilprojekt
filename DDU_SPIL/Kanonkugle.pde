class kanonkugle{
float posX=200, posY=200; 

kanonkugle(float posKanX, float posKanY){
posX = posKanX;
posY = posKanY;

}

void display(){
    ellipse(posX,posY,10,10);
  }
  
  void move(){
    posY = posY - 3;
  }

}
