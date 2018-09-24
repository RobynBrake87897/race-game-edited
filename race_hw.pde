// variables used
boolean messageActivatorT = false;
boolean messageActivatorB = false;
int locationTwin = 795;
int locationBwin = 795;
int locationTurtle = 10;
int locationBunny = 10;
PImage turtleImage, bunnyImage;
void setup()
{
  // set screen size
  size(800,800);
  
  // place bunny image
  bunnyImage = loadImage("bunny.jpg");
  
  // place turtle image
  turtleImage = loadImage("turtle.jpg");
}
void draw()
{
  // set background
  background(0);
  
  // if turtle wins
  if (messageActivatorT == true)
 {
   textSize(50);
   text("The Turtle Wins!",220,400);
 }
  // set message for activation "turtle wins"
  if (locationTurtle >= locationTwin)
 {
   messageActivatorT = true;
 } 
  // set message for activation "hare wins"
  if (locationBunny >= locationBwin)
 {
   messageActivatorB = true;
 }
  // if bunny wins
  else if (messageActivatorB == true)
 {
   textSize(50);
   text("The Hare Wins!",220,400);
 }
  // bunny
  image(bunnyImage,250,locationBunny,100,100);
  
  // turtle
  image(turtleImage,550,locationTurtle,100,100);
}  
void keyPressed()
{
  // make bunny move
  if (key == 'a' || key == 'a')
 {
   locationBunny = locationBunny + 15;
 } 
  // make turtle move
  else if (key == 'l' || key == 'l')
  {
    locationTurtle = locationTurtle + 15;
  }
}
