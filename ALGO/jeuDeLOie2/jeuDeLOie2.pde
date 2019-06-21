/*=================================================================================================*\
                                           JEU DE L'OIE
\*=================================================================================================*/

/*============================*\
  INIT DES VARIABLES
\*============================*/
//total des joueurs
int nbreJoueur = 2;
int joueur = nbreJoueur+1;
int totalDes;

//tableaux de variables
/* Joueur */
int[] posJoueur = new int[joueur];
int[] lastPosJoueur = new int[joueur];
int[] handicapJoueur = new int[joueur];
boolean[] pass = new boolean[joueur];
boolean[] jouer = new boolean[joueur];
int[][] colJoueur = new int[joueur][3]; //tab multidimension pour l'assignation des couleurs R,G,B par Joueur coljoueur = {{nom joueur=>}{}}

/* plateau et dés */
int[] pionPosition = new int[64];
int[] resDes = new int[2];

//état de la partie au départ
/* joueur */
int index = 1;
/* déroulement de la partie */   
int nbreTour = 0;

boolean win = false;


/*============================*\
  LANCEUR PROGRAMME
\*============================*/
void setup(){
  /* ================================================================== */
  //taille de la zone
  size(1280, 600);
  
  /* ================================================================== */
  //init des couleurs, positions et handicapes des joueurs
  for (int i=1; i<nbreJoueur; i++) {
    colJoueur[i][0] = (int) Math.floor(random(255));
    colJoueur[i][1] = (int) Math.floor(random(255));
    colJoueur[i][2] = (int) Math.floor(random(255));
    posJoueur[i] = 0;
    lastPosJoueur[i] = 0;
    handicapJoueur[i] = 0;
    //pass[joueur] = false;
    //jouer[joueur] = false;
  }
  
  /* ================================================================== */
  //init des cases du plateau
  for(int i=0; i<63; i++){
    pionPosition[i] = 0;
  }
  
  /* ================================================================== */
  //premier joueur
  index = 1;
}


/*============================*\
  AFFICHAGE PROGRAMME
\*============================*/
void draw(){
  delay(800);
  
  //dessin de la zone de jeu
  gameArea();
  
  //recupère la situation du joueur
  playerStatus();
  /* ================= LANCEMENT DU JEUX ====================== */
  if(index<joueur){
    lanceur();
    pion();
    pion(posJoueur[index], index);
    Play();
  }

  if(posJoueur[index] == 63){
    String text= "C'est gagné DORA !! Le joueur "+index+" sur la case "+(posJoueur[index]);
    println("le joueur "+index+" à gagner !");
    redraw();
    textSize(32);
    fill(255, 0, 0);
    text(text, 500, 140);
    win=true;
    stop();
  }else if(index == nbreJoueur){
    index = 1;
    nbreTour++;
  }else{
    index++;
  }
}


/*============================*\
  FONCTIONS DU JEU
\*============================*/
void lancer(){ //jet de dés
  resDes[0] = (int)Math.floor(random(1,7));
  resDes[1] = (int)Math.floor(random(1,7));
  println("dés 1 : "+resDes[0]);
  println("dés 2: "+resDes[1]);
  fill(0);
  text("dés: "+resDes[0]+" - "+resDes[1], 20, 80);
  totalDes = resDes[0] + resDes[1];
  fill(0);
  text("total des dés : "+totalDes, 20, 180);
}

void playerStatus(){
  textSize(12);
  fill(0);
  text("Joueur : "+index, 20, 110);
}

void lanceur(){ //joueur en cours
  if(posJoueur[index] == 0){
    println("joueur "+index+" part de la case départ");
    fill(0, 0, 0);
    text("Le joueur "+index+" joue !", 20, 25);
    text("Position début", 20, 145);
  }else{
    println("joueur "+index+" part de la case "+posJoueur[index]);
    fill(0, 0, 0);
    text("Le joueur "+index+" joue !", 20, 25);
    text("Position "+posJoueur[index], 20, 145);
  }
}

void Play(){
//  if(pass[index] != true && handicapJoueur == 0){
    lancer();
    moveRules();
//  }
}

void moveRules(){ //<>//
  if(nbreTour<1){
    if((resDes[0] == 6 && resDes[1] == 3)||(resDes[0] == 3 && resDes[1] == 6)){
      
    }
  }
  
  /*if(jouer[joueur] != true){
  }*/
}

/*============================*\
  PARAMETRES GRAPHIQUE
\*============================*/
/* ======================================== PLATEAU DE JEU ===================================== */
void gameArea(){
  background(255);
  fill(0);
  text("Tour n° : "+nbreTour, 20, 50);
  for(int i=0; i<64; i++){
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
    ellipse(170+(i*17), 17, 15, 15);
    textSize(8);
    if (i==3 || i==52||i==58) {
      fill(255);
    } else {
      fill(0);
    }
    String text;
    if (i==0) {
      text="debut";
    } else {
      text=""+i+"";
    }
    text(text, 166+(i*17), 20);
  }
}

/* ===================================== REPRESENTATION JOUEUR ================================= */
void pion(){
  for(int ind=1; ind<joueur; ind++){
    if(index != ind){
      fill(0,0,0);
      text(ind, 167+(posJoueur[ind]*15), 50);
      fill(colJoueur[ind][0], colJoueur[ind][1], colJoueur[ind][2]);
      rect(168+(posJoueur[ind]*15), 5, 5, 17, 15);
    }
  }
}

void pion(int position,int indexJoueur){
  if(index == indexJoueur){
   fill(255,0,0);
  }else{
    fill(0,0,0);
  }
  text(index, 167+(position*17), 50);
  fill(colJoueur[index][0], colJoueur[index][1], colJoueur[index][2]);
  rect(168+(position*17), 5, 5, 17, 15);
}
