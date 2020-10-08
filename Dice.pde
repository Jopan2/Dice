void setup()
{
  
  size(600, 600);
  noLoop();
  fill(255);
  textSize(20);

  
}
void draw()
{  int sum = 0;
  background(255,300,203);
  for(int y= 0; y<= 500; y = y + 50)
  {
    for(int x = 0; x <= 500; x = x + 50)
    {  
      Die d = new Die(x, y);
      d.show();
      sum += d.dots;
    }

  }
  fill(0);
  text("Total: " +sum,300,590);
  
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, dots;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
    dots = (int)(Math.random() * 6) + 1;
    
  }
  void show()
  {
    //your code here
    if(dots == 1){
      fill(255);
      rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 24,myY + 25,10,10);
    }
    if(dots == 2){
      fill(255);
  rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if(dots == 3){
      fill(255);
  rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if(dots == 4){
      fill(255);
      rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 12, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
    }
    if(dots == 5){
      fill(255);
   rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 12, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 24,myY + 25,10,10);
    }
    if(dots == 6){
      fill(255);
      rect(myX, myY, 50, 50, 7);
      fill(255,300,203);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 12, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
    }


  }
  
}
