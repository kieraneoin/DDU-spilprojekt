class spilleren {

  int W = 394;
  int W2 = 4;
  
  float posX, posY; 
  
  spilleren(){
    posX = 200;
    posY = 350;
  }
  
  void moveSpiller(){
    if (keyPressed && keyCode== LEFT){
    posX -= 5;
    }
  if (keyPressed && keyCode== RIGHT){
    posX += 5;
  }
  }
  
 void display(){
   noStroke();
   ellipse(posX, posY,30, 30);
   rect(posX-5, posY-30, 10, 20);
   

 }
  
  void kanonkugle(){
    ellipse(posX-40,posY-40,10,10);
  }
  
  void vaegge(){
   if (posX - 10 < W2) { 
      posX = W2 + 10; 
    }
    if (posX + 10 > W) { 
      posX = W - 10;
    }
  }
}
