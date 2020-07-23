class Map{
  String path,mapDataLine="";
  String[] mapDataArray,mapData;
  int ofset,sizeX,sizeY,mode=0;
  color[] c = {#FFFFFF,#000080,#008000,#800000,#008080,#800080,#808000,#888888,#0000ff,#00ff00,#ff0000,#00ffff,#ffff00,#ff00ff,#ffffff};
  PGraphics maps;
  Map(PGraphics _map,String _path){
    path=_path;
    maps=_map;
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
  }

  int getIntColor(int x,int y){
    return int(getColor(x,y));
  }
  void draw(){
    maps.beginDraw();
    for(int i=0;sizeX/10>i;i++){
      for(int j=0;sizeY/10>j;j++){
        maps.fill(red(c[getIntColor(i,j)]),green(c[getIntColor(i,j)]),blue(c[getIntColor(i,j)]));
        maps.rect(i*10,j*10,10,10);
      }
    }
    maps.endDraw();
  }

}
