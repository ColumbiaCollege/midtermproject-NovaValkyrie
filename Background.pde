//Sets a float for the Image for the move
float spacey=0;
void Scrolling() {
  //Sets up the Image Mode to corner
  imageMode(CORNER);
  //Loads in two Background images while allowing to move down
  image(Space, 0, -height+spacey, width, height);
  image(Space, 0, spacey, width, height);
  spacey++;

//Makes a constant Loop for the background image 
  if (spacey == height) {
    spacey =0;
  }
}
