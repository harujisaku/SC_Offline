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




Object obj;
// color[] c = {#000000,#000080,#008000,#800000,#008080,#800080,#808000,#888888,#0000ff,#00ff00,#ff0000,#00ffff,#ffff00,#ff00ff,#ffffff};

void setup(){
  size(300,300);
  obj = new Object(300,300);
  obj.draw();
}
