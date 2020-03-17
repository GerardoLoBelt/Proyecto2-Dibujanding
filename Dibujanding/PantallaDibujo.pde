class PantallaDibujo{
  
void displayPantallDibujo(){ 
  
 textSize(12);
 fill(#f21d2f);//ROJO
 rect(20,20,20,20);
 text("Presiona: 1",45,24);
 fill(#fd9230);//NARANJA
 rect(20,50,20,20);
 text("Presiona: 2",45,54);
 fill(#fdd13d);//AMARILLO
 rect(20,80,20,20);
 text("Presiona: 3",45,84);
  fill(#23c08e);//VERDE
 rect(20,110,20,20);
 text("Presiona: 4",45,114);
 fill(#8fecf4);//AZUL
 rect(20,140,20,20);
 text("Presiona: 5",45,144);
 fill(#5e295f);//MORADO
 rect(20,170,20,20);
 text("Presiona: 6",45,174);
  fill(#ff20ad);//ROSA
 rect(20,200,20,20);
 text("Presiona: 7",45,204);
 fill(200);
 text("ENTER para gravedad",17,234);
 text("Presiona O para salir",17,250);
 
 if(Colo==1){fill(#f21d2f);} //Rojo
 if(Colo==2){fill(#fd9230);} //Naranja
 if(Colo==3){fill(#fdd13d);} //Amarillo 
 if(Colo==4){fill(#23c08e);} //Verde
 if(Colo==5){fill(#8fecf4);} //Azul
 if(Colo==6){fill(#5e295f);} //Morado
 if(Colo==7){fill(#ff20ad);} //Rosa
}

}
