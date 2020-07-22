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

class Object{
  PGraphics vSpace;
  int w,h;
  Object(int _w,int _h){
    vSpace=createGraphics(w,h);

  }
}
void setup(){}
void draw(){}
