Die object;
int sum = 0;
void setup()
{
  size(500, 575);
  noLoop();
}
void draw()
{
  background(150);
  for(int y = 25; y<=450; y+=50){
    for(int x = 25; x<=450; x+=50){
      object = new Die(x,y);
      object.show();
      object.roll();
      sum += object.rolls;
    }
  } 
  noFill();
  rect(200,500,100,50); 
  textSize(30);
  text(sum,225,535);
}
void mousePressed()
{
  sum = 0;
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int rolls = 0;
  int mySize, myX, myY;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    mySize=50;
    //variable initializations here
  }
  void roll()
  {
    rolls = (int)(Math.random()*6)+1;
    if(rolls==1){
      fill(0);
      ellipse(myX+mySize/2,myY+mySize/2,5,5);
    } else if(rolls==2){
      fill(0);
      ellipse(myX+(mySize*(1.0/3)),myY+mySize/2,5,5);
      ellipse(myX+(mySize*(2.0/3)),myY+mySize/2,5,5);
    } else if(rolls==3){
      fill(0);
      ellipse(myX+mySize/4.0,myY+mySize/1.5,5,5);
      ellipse(myX+mySize*.75,myY+mySize/1.5,5,5);
      ellipse(myX+mySize/2.0,myY+mySize/3,5,5);
    } else if(rolls==4){
      fill(0);
      ellipse(myX+mySize/3.0,myY+mySize/1.5,5,5);
      ellipse(myX+mySize/3.0,myY+mySize/3,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/3,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/1.5,5,5);      
    } else if(rolls==5){
      fill(0);
      ellipse(myX+mySize/3.0,myY+mySize/1.5,5,5);
      ellipse(myX+mySize/3.0,myY+mySize/3,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/3,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/1.5,5,5); 
      ellipse(myX+mySize*(2/3.0),myY+mySize/1.5,5,5);   
      ellipse(myX+mySize/2,myY+mySize/2,5,5);
    } else if(rolls==6){
      fill(0);
      ellipse(myX+mySize/3.0,myY+mySize/1.5,5,5);
      ellipse(myX+mySize/3.0,myY+mySize/3,5,5);
      ellipse(myX+mySize/3.0,myY+mySize/2,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/1.5,5,5);
      ellipse(myX+mySize*(2/3.0),myY+mySize/2,5,5); 
      ellipse(myX+mySize*(2/3.0),myY+mySize/3,5,5);      
    }
  }
  void show()
  {
    fill(255);
    rect(myX,myY,mySize,mySize);
    
  }
}
