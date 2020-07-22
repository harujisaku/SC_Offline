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
class Map{
  String path,mapDataLine="";
  String[] mapDataArray,mapData;
  int ofset,sizeX,sizeY,mode=0;
  Map(String _path){
    path=_path;
  }
  void setup(){
    mapDataArray = loadStrings(path);
    if (mapDataArray[0]=="null"){
      mapDataArray[0]="";
    }
    for(int i=0;mapDataArray.length>i;i++){
      mapDataLine+=mapDataArray[i];
    }
    mapData=split(mapDataLine,";");
    ofset=int(mapData[1]);
    sizeX=int(mapData[2]);
    sizeY=int(mapData[3]);
  }

  void printData(){
    printArray(mapDataArray);
    printArray(mapData);
  }

  String getColor(int x,int y){
    String getData="",lineData="";
    String[] posData;
    int returnData=0;
    lineData=mapData[y+ofset];
    posData=split(lineData,",");
    return posData[x];
    // return returnData;
  }

  int getIntColor(int x,int y){
    return int(getColor(x,y));
  }
}
  // int getHeight(){
  //   return mapData.length-ofset-1;
  // }
  //
  // int getWidth(){
  //   int biggerLine=0;
  //   String a,bigger="";
  //   for(int i=ofset;mapData.length>i;i++){
  //     a=mapData[i];
  //     if(a.length()>=bigger.length()){
  //       biggerLine=i;
  //       bigger=mapData[i];
  //     }
  //   }
  //   return bigger.length()-(1-bigger.length()%2)-2*((bigger.length())/3);
  // }
  // int getWidth(int h){
  //   return int(mapData[h+ofset]);
  // }
class Object{
  PGraphics vSpace;
  int w,h;
  Object(int _w,int _h){
    vSpace=createGraphics(w,h);

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
