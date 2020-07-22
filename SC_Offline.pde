class Player{
  int hp,posX,posY,posZ;
  Battle battle;
  Action action;
  HitCheck hit;
  Gun gun;
  Player(int _hp,int _posX,int _posY,int _posZ){
    hp=_hp;
    posX=_posX;
    posY=_posY;
    posZ=_posZ;
    battle = new Battle(hp);
    action = new Action(10,0,0,50);
  }
  void update(){

  }
}

class Battle{
  int hp;
  Battle(int _hp){
    hp=_hp;
  }
}


class Action{
  int speedX,speedY,speedZ,jampHight;
  Action(int _speedX,int _speedY,int _speedZ,int _jampHight){
    speedX=_speedX;
    speedY=_speedY;
    speedZ=_speedZ;
    jampHight=_jampHight;
  }
}

class HitCheck{
  HitCheck(){

  }
}

class Gun{
  Gun(){

  }
}



Map map;
color[] c = {#000000,#000080,#008000,#800000,#008080,#800080,#808000,#888888,#0000ff,#00ff00,#ff0000,#00ffff,#ffff00,#ff00ff,#ffffff};

void setup(){
  size(300,300);
  map = new Map("test.txt");
  map.setup();
  map.printData();
  println(map.getColor(1,0),map.sizeX,",",map.sizeY);
  for(int i=0;map.sizeX/10>i;i++){
    for(int j=0;map.sizeY/10>j;j++){
      fill(red(c[map.getIntColor(i,j)]),green(c[map.getIntColor(i,j)]),blue(c[map.getIntColor(i,j)]));
      rect(i*10,j*10,10,10);
    }
  }
}
