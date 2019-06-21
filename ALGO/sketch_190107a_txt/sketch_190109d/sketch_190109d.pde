int lancer;
int resDes;
int[] des = new int[2];
int positionJoueur = 0;
boolean perdu = true;

void setup(){
  size(800, 600);
  plateau();
  int nbrLancer = 0;
  while(positionJoueur!=63){
    Lancer();
    if(positionJoueur + des[0] +des[1]>63){
      int posJoueur = (positionJoueur + des[0] +des[1])-63;
      positionJoueur = 63 - posJoueur;
    }else{
      positionJoueur = positionJoueur + des[0] +des[1];
    }
    println("le joueur est en case "+positionJoueur);
    pion(positionJoueur);
    nbrLancer = nbrLancer+1;
  }
  println("nombre de lancé total est de "+nbrLancer);
}

void Lancer(){
  print("Résultat des dés : ");
  for(int i = 0; i<2; i++){
    lancer = (int)Math.floor(random(1,7));
    des[i] = lancer;
  }
  println(des[0]+" et "+des[1]);
}

void pion(int pos){
  rect((pos*10), 10, 10, 10);
}

void plateau(){
  for(int i=1; i<63; i++){
  rect(0+(i*10), 10, 10, 10);
  }
  rectMode(CORNER);
  fill(32);
}
