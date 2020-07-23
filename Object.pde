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
  void draw_obj(){
    image(vSpace,0,0);
  }
  void camera(int _x,int _y ,int _z){
    PImage p=vSpace.get(_x,_y,w,h);
    image(p,0,0);
  }
}
