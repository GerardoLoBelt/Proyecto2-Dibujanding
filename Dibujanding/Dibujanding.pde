import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing mundo;
PantallaDibujo PD; PantallaInicial PIn; Instrucciones Inst;

ArrayList<Cuadros> cuadritos;
ArrayList<CuadrosCaen> cuadritosCaen;
int Colo,Pantalla;
boolean paso=false;
color QueColorEs;
PImage Fondo,Instrucciones,Pantallita;

void setup(){
size(800,500);
smooth();
  PD = new PantallaDibujo();
  PIn = new PantallaInicial();
  Inst = new Instrucciones();
              mundo = new Box2DProcessing(this);
              mundo.createWorld();
       cuadritos = new ArrayList<Cuadros>();
       cuadritosCaen = new ArrayList<CuadrosCaen>();
   Pantalla = 1;
Fondo = loadImage("Fondo.jpg");
Instrucciones = loadImage("Instrucciones.jpg");

}

void draw(){
  background(255);
  smooth();  
  noStroke();

if(Pantalla==1){PIn.displayPantallInicial();
  if (random(1) < 0.1) {
    CuadrosCaen p = new CuadrosCaen(random(width),10);
    cuadritosCaen.add(p);}
    mundo.step();}

if(Pantalla==2){Inst.displayInstrucciones();}

if(Pantalla==3){PD.displayPantallDibujo();
   if(paso){mundo.step();}}

if(mousePressed){
  fill(QueColorEs);
 }
 
 for(Cuadros cuadritooo: cuadritos){cuadritooo.displayCuadrito();}
 for(CuadrosCaen cuadritooo: cuadritosCaen){cuadritooo.displayCuadritoCaen();}
 
 for (int i = cuadritos.size()-1; i >= 0; i--) {
    Cuadros Cuerpa = cuadritos.get(i);
    if (Cuerpa.done()) {
      cuadritos.remove(i);}}
      
      for (int i = cuadritosCaen.size()-1; i >= 0; i--) {
    CuadrosCaen b = cuadritosCaen.get(i);
    if (b.done()) {
      cuadritosCaen.remove(i);
    }}
    
}
 
 void mouseDragged(){
 if(Colo==1){QueColorEs=#f21d2f;
  Cuadros ROJO = new Cuadros(mouseX,mouseY,16,16,#f21d2f);
  cuadritos.add(ROJO);}
 if(Colo==2){QueColorEs=#fd9230;
  Cuadros NARANJA = new Cuadros(mouseX,mouseY,16,16,#fd9230);
  cuadritos.add(NARANJA);}
 if(Colo==3){QueColorEs=#fdd13d;
  Cuadros AMARILLO = new Cuadros(mouseX,mouseY,16,16,#fdd13d);
  cuadritos.add(AMARILLO);}
  if(Colo==4){QueColorEs=#23c08e;
  Cuadros VERDE = new Cuadros(mouseX,mouseY,16,16,#23c08e);
  cuadritos.add(VERDE);}
 if(Colo==5){QueColorEs=#8fecf4;
  Cuadros AZUL = new Cuadros(mouseX,mouseY,16,16,#8fecf4);
  cuadritos.add(AZUL);}
 if(Colo==6){QueColorEs=#5e295f;
  Cuadros MORADO = new Cuadros(mouseX,mouseY,16,16,#5e295f);
  cuadritos.add(MORADO);}
  if(Colo==7){QueColorEs=#ff20ad;
  Cuadros ROSA = new Cuadros(mouseX,mouseY,16,16,#ff20ad);
  cuadritos.add(ROSA);}
 }
 
 class Instrucciones{ void displayInstrucciones(){image(Instrucciones,0,0);}}
 class PantallaInicial{void displayPantallInicial(){image(Fondo,0,0);}}
 
void keyPressed(){
  
  if(paso==true){if (keyCode==ENTER){paso=false;}}
  else{if (keyCode==ENTER){paso=true;}}
  
  if (key =='i'){Pantalla=2;}
  if (key =='a'){Pantalla=3;}
  if (key =='o'){Pantalla=1;}
  
  if (key =='1'){Colo=1;}
  if (key =='2'){Colo=2;}
  if (key =='3'){Colo=3;}
  if (key =='4'){Colo=4;}
  if (key =='5'){Colo=5;}
  if (key =='6'){Colo=6;}
  if (key =='7'){Colo=7;}
  
}
