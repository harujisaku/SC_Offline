class Object{
  PGraphics vSpace;
  Map map;
  int w,h;
  Object(int _w,int _h){
    w=_w;
    h=_h;
    vSpace=createGraphics(w,h);
    map = new Map(vSpace,"test.txt");
    map.setup();
    map.draw();
  }
  void draw(){
    image(vSpace,0,0);
  }
}
