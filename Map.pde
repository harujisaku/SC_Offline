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
