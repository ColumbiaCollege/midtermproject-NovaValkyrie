//Midterm Project By Jessen Durden
//3/619
//Sets up the Image identifier
PImage Space;
//Makes a New arraylist for the waves
ArrayList<Wave> waves = new ArrayList<Wave>();
SpaceShip Ship;
//Makes the Integer for the wave start at five seconds
int waveStart = 5000;

void setup() {
  //Loads in the image for the background
  Space=loadImage("space.jpg");  
  //Sets the Size and Color of the background
  size(900, 600);
  fill(255);
  //Setsup the New Spaceship and Wave 
  Ship = new SpaceShip();
  Wave wave = new Wave();
  // adds a new wave 
  waves.add(wave);

}
void draw() {
  //Loads in the scrolling 
  Scrolling();
  //sets up the barriers of the window so no one can fly out 
  if (Ship.shipX < 30) {
    Ship.shipX = 30;
  }
  if (Ship.shipX > width - 30) {
    Ship.shipX = width - 30;
  }
  if (Ship.shipY < 30) {
    Ship.shipY = 30;
  }
  if (Ship.shipY > height - 30) {
    Ship.shipY = height - 30;
  }
  //Loads in the Ship display,Movement,And the speed from the Ship Tap
  Ship.display();
  Ship.move();
  Ship.speed();
  //Loads in Five rocks pre wave
  for (Wave wave : waves) {
    Boolean off = false;
    for (Rock rock : wave.rocks) {
      rock.display();
      rock.y += 5;
      //Checks to see if the ship is hit and resets the game while Printing Collioson 
      if (rock.CheckBounds(Ship) == true) {
        print("Collision\n");
        waveStart = millis() + 5000;
        Ship.shipX = width/2;
        Ship.shipY = height/2;
        off = true;
      }
    }
//clears the current wave
    if (off==true) {
      off=false;
      waves.clear();
      break;
    }
  }
  //Wave intervals For ultra Mode set wave start to 500
  if (millis()>waveStart) {
    waveStart = millis() + 2000;
    Wave wave = new Wave();
    wave.GenerateWave(10);
    waves.add(wave);
  }
}
