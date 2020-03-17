class Cuadros  {

  float x,y;
  float w,h;
  Body Cuerpa;
  color Colors;

  // Constructor
  Cuadros(float x_, float y_, float w_, float h_, color Colors_) {
    w = 16;
    h = 16;
    Colors=Colors_;
    
    BodyDef bd = new BodyDef(); 
    Vec2 posicionInicial = new Vec2(x_,y_); 
    Vec2 posicionEnEscalaBox2D = mundo.coordPixelsToWorld(posicionInicial); 
    bd.position.set(posicionEnEscalaBox2D);
    bd.type = BodyType.DYNAMIC;
    
    Cuerpa = mundo.createBody(bd);
    Cuerpa.setLinearVelocity(new Vec2(0,10));
    Cuerpa.setAngularVelocity(random(10));
    
    PolygonShape ps= new PolygonShape();
    float ancho=mundo.scalarPixelsToWorld(w_);
    float alto=mundo.scalarPixelsToWorld(h_);
    ps.setAsBox(ancho/2,alto/2);
    
    FixtureDef fd = new FixtureDef(); 
    fd.shape = ps; 
    fd.friction = 0.3; 
    fd.restitution = 0.4; 
    fd.density = 1; 
    Cuerpa.createFixture(fd);
  }

  void killBody() {
    mundo.destroyBody(Cuerpa);
  }

  boolean done() {    
    Vec2 pos = mundo.getBodyPixelCoord(Cuerpa);  
    if (pos.y > height+w*h||pos.x > width+w*h) {
      killBody();
      return true;}
    return false;
  }

//Dibujar cada cuadrito

  void displayCuadrito() {
   Vec2 posicion = mundo.getBodyPixelCoord(Cuerpa);
   float angulo=Cuerpa.getAngle();
   pushMatrix();
   translate(posicion.x,posicion.y);
   rotate(-angulo);
    noStroke();
    rectMode(CENTER);
    rect(x,y,w,h);
   popMatrix();}
}
