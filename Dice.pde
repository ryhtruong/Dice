Dice Dice1;
Dice Dice2;
Dice Dice3;
Dice Dice4;
Dice Dice5;
Dice Dice6;
Dice Dice7;
Dice Dice8;
Dice Dice9;

void setup(){
size(350,350);
noLoop();
}

void draw(){
background(255);
  Dice1 = new Dice(50,70);
  Dice1.randomize();
  Dice1.show();
  
  Dice2 = new Dice(150,70);
  Dice2.randomize();
  Dice2.show();
  
  Dice3 = new Dice(250,70);
  Dice3.randomize();
  Dice3.show();
  
  Dice4 = new Dice(50,170);
  Dice4.randomize();
  Dice4.show();
  
  Dice5 = new Dice(150,170);
  Dice5.randomize();
  Dice5.show();
  
  Dice6 = new Dice(250,170);
  Dice6.randomize();
  Dice6.show();
  
  Dice7 = new Dice(50,270);
  Dice7.randomize();
  Dice7.show();
  
  Dice8 = new Dice(150,270);
  Dice8.randomize();
  Dice8.show();
  
  Dice9 = new Dice(250,270);
  Dice9.randomize();
  Dice9.show();
  
  int sum=0;
 sum = (Dice1.number)+(Dice2.number)+(Dice3.number)+(Dice4.number)+(Dice5.number)+(Dice6.number)+(Dice7.number)+(Dice8.number)+(Dice9.number);
  text("Sum = " + sum, 150, 35);
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

