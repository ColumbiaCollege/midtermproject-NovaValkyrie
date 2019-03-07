class SpaceShip {
  //Defines the Properties of the ShipX and ShipY vaules and Speed X and Speed y Values
  float shipX;
  float shipY;
  float speedX;
  float speedY;
  //sets the image identifier 
  PImage Pod;
 //Draws the ship
  SpaceShip() {
    shipX =width/2;
    shipY = height/2;
    Pod = loadImage("Spacepod.png");
  }
  void display() {
    //Sets up the Image Mode to Center for the ship
    imageMode(CENTER);
   //Puts The Pod Image into the program
    image(Pod,shipX,shipY,60, 60);
    
  }
  void move() {
   //Sets the direction of the ship with the corresponding arrow key
    if (keyPressed && keyCode == LEFT) {
      speedX--;
    }
    if (keyPressed && keyCode == RIGHT) {
      speedX++;
    }


    if (keyPressed && keyCode == UP) {
      speedY --;
    }

    if (keyPressed && keyCode == DOWN) {
      speedY++;
    }
  }
  void speed() {
      //Sets up the Gravity Command
    shipX = shipX+speedX;
    speedX=.99*speedX;
    shipY= shipY+speedY;
    speedY=.99*speedY;
  }
}
