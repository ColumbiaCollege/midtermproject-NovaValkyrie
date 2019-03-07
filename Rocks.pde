//Sets up the class rock and identifies different float integers for the rocks
class Rock{
 float x;
  float y;
  float w;
  float h;
  //Identifies the Image as Astorids
  PImage astorids;
  

    //Sets up the rocks x,y, width, and height.
    Rock(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    //Loads in the Game.png Image
    astorids = loadImage ("Game.png");
  }

  void display() {
  //Sets up the astorids with the proper vaules
    image(astorids, x, y, w, h);
  }
 //Checks for the bounds of the rock 
  Boolean CheckBounds(SpaceShip ship){
    if(ship.shipX > x && ship.shipX < x + w && ship.shipY > y && ship.shipY < y + h){
      //In bounds
      return true;
    }
    else{
      //Not in bounds
      return false; 
    }
  }
}
