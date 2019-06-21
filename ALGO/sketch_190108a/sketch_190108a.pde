int[] charge = new int[10];
int tmp;
int tab=charge.length;
void setup(){
  println("etat initial");
  repartir();
  println("etat trié");
  tri();
  }
void repartir(){   
  for(int index=0; index < tab; index++){
    float poids= random(2000);
    int poid=round(poids);
    charge[index] = poid;
    println(charge[index]);
  }
}
void tri(){
  boolean estPermute=true;
  while(estPermute){
    estPermute = false;
    for(int index = 0; index < tab-1; index++){ //<>//
      if(charge[index]>charge[index+1]){
        tmp=charge[index+1];
        charge[index+1]=charge[index];
        charge[index]=tmp;
        estPermute=true;
      }
    }
  }
  for(int index=0; index < tab; index++){
    println(charge[index]);
  }
}
