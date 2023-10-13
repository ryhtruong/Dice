Dice Dicey;

void setup(){
size(350,350);
noLoop();
}

void draw(){
background(255);
 int sum = 0;
for(int i= 30; i<=270; i+=70){
  for (int j=20; j<=270; j+=60){
      Dice Dicey = new Dice(j,i);
      Dicey.randomize();  
      Dicey.show();
      sum += Dicey.number;
  }
}

  text("Sum = " + sum, 150, 335);
}

void mousePressed(){
  redraw();
}

class Dice {
  //A Dice has a square(the dice), a random value between of 1-6(display w circles)
  int myX, myY, number;
  double num;
  boolean isOne, isTwo, isThree, isFour, isFive, isSix;
  Dice(int x, int y){
  myX= x;
  myY = y;
 isOne = false;
 isTwo = false;
 isThree = false;
 isFour = false;
 isFive = false;
 isSix = false; 
 num = Math.random();
  }
  //display dice
  //display 1-6 chance num/circles
  void randomize(){
  if (num <.166){
    isOne = true;
    number=1;
  }
  else if (num>=.166 &&  num<.332){
    isTwo = true;
    number=2;
  }
  else if (num>=.332 && num<.498){
    isThree = true;
    number=3;
  }
  else if (num>=.498 && num<.664){
    isFour = true;
    number=4;
  }
   else if (num>=.664 && num<.83){
    isFive = true;
    number=5;
  }
   else if (num>=.83 && num<1){
    isSix = true;
    number=6;
  }
  }//end of randomize
  void show(){
    fill(#FF7474);
    rect(myX, myY, 50, 50);
    if (isOne==true){
      fill(0);
      ellipse(myX+25,myY+25, 5,5);
    }
    else if (isTwo==true){
      fill(0);
      ellipse(myX+10,myY+10, 5,5);
      ellipse(myX+40,myY+40, 5,5);
    }
    else if (isThree==true){
      fill(0);
       ellipse(myX+10,myY+10, 5,5);
       ellipse(myX+40,myY+40, 5,5);
       ellipse(myX+25,myY+25, 5,5);
    }
    else if (isThree==true){
      fill(0);
       ellipse(myX+10,myY+10, 5,5);
       ellipse(myX+40,myY+40, 5,5);
       ellipse(myX+25,myY+25, 5,5);
    }
    else if (isFour==true){
      fill(0);
       ellipse(myX+10,myY+10, 5,5);
       ellipse(myX+40,myY+40, 5,5);
       ellipse(myX+40,myY+10, 5,5);
       ellipse(myX+10,myY+40, 5,5);
    }
     else if (isFive==true){
      fill(0);
       ellipse(myX+10,myY+10, 5,5);
       ellipse(myX+40,myY+40, 5,5);
       ellipse(myX+40,myY+10, 5,5);
       ellipse(myX+10,myY+40, 5,5);
       ellipse(myX+25,myY+25, 5,5);
    }
     else if (isSix==true){
      fill(0);
       ellipse(myX+10,myY+10, 5,5);
       ellipse(myX+40,myY+40, 5,5);
       ellipse(myX+40,myY+10, 5,5);
       ellipse(myX+10,myY+40, 5,5);
       ellipse(myX+10,myY+25, 5,5);
       ellipse(myX+40,myY+25, 5,5);
    }
  } 
}

