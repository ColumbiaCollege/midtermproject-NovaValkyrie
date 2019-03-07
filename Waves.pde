//Makes the Class Wave
class Wave{
  //Sets up the array list for the rocks
  ArrayList<Rock> rocks = new ArrayList<Rock>();
  //Sets up the wave generater with the set ammount of rocks
  void GenerateWave(int a){
  for(int i = 0; i < a; i++){
    Rock _rock = new Rock(random(0, width), -90, 90, 90);
    rocks.add(_rock);
    }
  }
}
