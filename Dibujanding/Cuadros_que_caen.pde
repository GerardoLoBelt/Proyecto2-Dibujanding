class CuadrosCaen  {

  float w,h,x,y;
  Body Cuerpa;

  // Constructor
  CuadrosCaen(float x_, float y_) {
    w = 16;
    h = w;
    x=x_;
    y=y_;
    
    makeBody(new Vec2(x,y),w,h);
}

  void killBody() {
    mundo.destroyBody(Cuerpa);
  }

  boolean done() {    
    Vec2 pos = mundo.getBodyPixelCoord(Cuerpa);  
    if (pos.y > height+w*h||pos.x > width+w*h) {
      killBody();
      return true;}
    if (Pantalla==2) {
      killBody();
      return true;}
    return false;
  }

//Dibujar cada cuadrito

void makeBody(Vec2 center, float w_, float h_) {

    // Define a polygon (this is what we use for a rectangle)
    PolygonShape sd = new PolygonShape();
    float box2dW = mundo.scalarPixelsToWorld(w_/2);
    float box2dH = mundo.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    // Define the body and make it from the shape
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(mundo.coordPixelsToWorld(center));

    Cuerpa = mundo.createBody(bd);
    Cuerpa.createFixture(fd);
  }

  void displayCuadritoCaen() {
   Vec2 posicion = mundo.getBodyPixelCoord(Cuerpa);
   float angulo=Cuerpa.getAngle();
   pushMatrix();
   translate(posicion.x,posicion.y);
   rotate(-angulo);
    noStroke();
    fill(#23c08e);
    rectMode(CENTER);
    rect(0,0,w,h);
   popMatrix();}
}
