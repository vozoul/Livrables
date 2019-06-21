/*=================================================================================================*\ //<>// //<>//
                                           JEU DE L'OIE
\*=================================================================================================*/
/*============================*\
 INIT DES VARIABLES
\*============================*/
int nombreJoueur = 8;
int[] numJoueur = new int[nombreJoueur];
int[] posJoueur = new int[nombreJoueur];
int[] posJoueurs = new int[nombreJoueur];
int[][] colJoueur = new int[nombreJoueur][3];
int[] lastPosJoueur = new int[nombreJoueur];
int[] amendJoueur = new int[nombreJoueur];
int[] oiePos = {9, 18, 27, 36, 45, 54};
int[] posPlateau = new int[64];
boolean[] pass = new boolean[nombreJoueur];
int[] resDes = new int[2];
int indexJoueur = 0;
int nbreTour = 0;
int lancer;
boolean perdu=true;
/*============================*\
 LANCEUR PROGRAMME
\*============================*/
void setup() {
  size(1940, 250);
  frameRate(30);

  //init des couleurs, position et lastPos de tous les joueurs
  for (indexJoueur=0; indexJoueur<nombreJoueur; indexJoueur++) {
    colJoueur[indexJoueur][0] = (int) Math.floor(random(257));  //couleur rouge
    colJoueur[indexJoueur][1] = (int) Math.floor(random(257));  //couleur vert
    colJoueur[indexJoueur][2] = (int) Math.floor(random(257));  //couleur bleu
    posJoueur[indexJoueur] = 0;                                 //position initiale
    posJoueurs[indexJoueur] = 0;                                 //position initiale
    lastPosJoueur[indexJoueur] = 0;                             //position précédente
  } 
  indexJoueur=0;                                                //initialisation du premier joueurs
}
/*============================*\
 AFFICHAGE PROGRAMME
\*============================*/

void draw() {
  background(255, 255, 255);                                              //fond
  plateau();                                                              //dessin du plateau de jeu
  posJoueurs();                                                           //affichage des joueurs
  delay(600);                                                             //vistesse de la demo
  
  //indexJoueur du joueur définit au départ à 0 ou renvoyer à la fin de chaque tour (cf: fonction finTour();)
  if (indexJoueur<nombreJoueur && perdu==true) {
    annonce();
    joue();
    //definit la position du joueur
    lastPosJoueur[indexJoueur] = posJoueur[indexJoueur];
    //reprends l'historique de punitions 
    amend();
    
    if(pass[indexJoueur] != true && amendJoueur[indexJoueur] == 0){
      //Jet de dés
      lancer();
      des();
      //controle pour deplacement
      regleDeplacement(indexJoueur);
    }else if(pass[indexJoueur] == true && amendJoueur[indexJoueur] >= 1){
      amendJoueur[indexJoueur]--;
    }
    
    //position du joueur
    pion(posJoueur[indexJoueur], indexJoueur);
    posJoueurs();
  }
  //controle position de sortie
  if (posJoueur[indexJoueur] == 64) {
    String text= "C'est gagné DORA !! Le joueur "+(indexJoueur+1)+" sur la case "+(posJoueur[indexJoueur]-1);
    posJoueurs();
    println("le joueur "+(indexJoueur+1)+" à gagner !");
    redraw();
    textSize(16);
    fill(0, 0, 0);
    text(text, 150, 120);
    perdu=false;
    stop();
  }
  
  //controle fin tour
  if (perdu==false) {
    stop();
  } else if (indexJoueur==nombreJoueur-1) {
    indexJoueur=0;
    nbreTour++;
  } else {
    indexJoueur++;
  }
}
/*============================*\
 FONCTIONS
\*============================*/

void lancer() {
  resDes[0] = 0;
  resDes[1] =0;
//jet des dés
  print("Résultat des dés : ");
  resDes[0] = (int)Math.floor(random(1, 7));
  resDes[1] = (int)Math.floor(random(1, 7));
  println(resDes[0]+" et "+resDes[1]+" déplacement de "+(resDes[0]+resDes[1]));
}

void annonce() {
  println("le joueur "+(indexJoueur+1)+" joue.");
  println("joueur part de la case "+(posJoueur[indexJoueur]));
}

void regleDeplacement(int indexJoueur) {
  int newPositionJoueur = (posJoueur[indexJoueur]=posJoueur[indexJoueur]+resDes[0]+resDes[1]);
  //au commencement
  if (nbreTour<1) {
    if ((resDes[0]==6 && resDes[1]==3) || (resDes[0]==3 && resDes[1]==6)) {
      posJoueur[indexJoueur] = 26;
    } else if ((resDes[0]==4 && resDes[1]==5) || (resDes[0]==5 && resDes[1]==4)) {
      posJoueur[indexJoueur] = 53;
    } else if (resDes[0]+resDes[1]==6) {
      posJoueur[indexJoueur] = 12;
    }
  }

  //pendant la partie
  if(newPositionJoueur == 9 || newPositionJoueur == 18 || newPositionJoueur == 27 || newPositionJoueur == 36 || newPositionJoueur == 45 || newPositionJoueur == 54 ){
    resDes[0] = resDes[0]*2;
    resDes[1] = resDes[1]*2;
    posJoueur[indexJoueur] = lastPosJoueur[indexJoueur]+resDes[0]+resDes[1];
  }else if(newPositionJoueur == 19){
    if(amendJoueur[indexJoueur]==0){
      amendJoueur[indexJoueur]=2;
      pass[indexJoueur] = true;
    }
  }
  
  //anti-dépassement du plateau
  if (posJoueur[indexJoueur] + resDes[0] +resDes[1]>64) {
    int position = (posJoueur[indexJoueur] + resDes[0] +resDes[1])-64;
    posJoueur[indexJoueur] = 64 - position;
  } else {
    posJoueur[indexJoueur]=posJoueur[indexJoueur]+resDes[0]+resDes[1];
  }
}

void amend() {
}

//Positions de tous les joueur
void posJoueurs() {
  for (int i=0; i<nombreJoueur; i++) {
    posJoueurs[i]=posJoueur[i];
    if (i!=indexJoueur) {
      pion(posJoueurs[i], i);
    }
  }
}

/*============================*\
 PARTIE GRAPHIQUE
 \*============================*/


void plateau() {
  //dessin du plateau de jeux
  for (int i=0; i<63+1; i++) {
    if (i==9 || i==18 || i==27 || i==36 || i==45 || i==54) {
      fill(255, 255, 127);
    } else if (i==19) {
      fill(255, 85, 85);
    } else if (i==3 || i==52) {
      fill(106, 21, 21);
    } else if (i==42) {
      fill(5, 218, 48);
    } else if (i==58) {
      fill(0);
    } else if (i==0) {
      fill(0, 255, 0);
    } else if (i==63) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    ellipse(5+(i*30), 30, 30, 30);
    textSize(12);
    if (i==3 || i==52||i==58) {
      fill(255);
    } else {
      fill(0);
    }
    String text = "";
    if (i==0) {
      text="debut";
    } else {
      text=""+i+"";
    }
    text(text, (i*30), 35);
  }
  rectMode(CORNER);
}

void joue(){
  //affichage résultat des dés
  textSize(16);
  fill(0, 0, 0);
  text("Le joueur "+(indexJoueur+1)+" joue !", 150, 160);
}

void pion(int pos, int indexJoueur) {
  textSize(16);
  fill(colJoueur[indexJoueur][0], colJoueur[indexJoueur][1], colJoueur[indexJoueur][2]);
  text("Joueur "+(indexJoueur+1)+" a la position :"+(posJoueur[indexJoueur]-1), (250*(indexJoueur+1))+30, 210);
  fill(colJoueur[indexJoueur][0], colJoueur[indexJoueur][1], colJoueur[indexJoueur][2]);
  rect((pos*30)-30, 15, 10, 25, 15);
}

void des() {
  //affichage résultat des dés
  textSize(16);
  fill(0, 0, 0);
  text("résultat de dés "+resDes[0]+" et "+resDes[1], 150, 80);
}
