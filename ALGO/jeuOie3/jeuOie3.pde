import static javax.swing.JOptionPane.*;
int nbreJoueur;
int nbreCase = 64;
int nbreDes = 2;
int nbreTour = 0;
int ind = 1;
int[][] cases = new int[nbreCase][3];
int[][] Joueur;
int[] resDes = new int[nbreDes];
int totalDes = 0;

boolean win = false;

 
void setup(){
  size(1024, 220);
  nbreJoueur = Integer.parseInt(showInputDialog("Veuillez saisir le nombre de joueurs"));
  Joueur = new int[nbreJoueur][6];
 
  for (int i=0; i<nbreJoueur; i++) {
    Joueur[i][0] = (int) Math.floor(random(255));
    Joueur[i][1] = (int) Math.floor(random(255));
    Joueur[i][2] = (int) Math.floor(random(255));
    Joueur[i][3] = 0; //lastPosition
    Joueur[i][4] = 0; //Position
    Joueur[i][5] = 0; //handicape
  }

  
  ind = 0;
  nbreTour = 0;
}

void draw(){
  plateau();
  joueur();
  textSize(12);
  fill(0);
  text("Tour n° "+nbreTour, 30, 210);
  initDice();
  if(ind<(nbreJoueur)){
    play(ind); //<>//
    pion(ind);
  }
  if(ind == (nbreJoueur)){
    nbreTour++;
    ind=0;
  }else{
    ind++;
  }
  pion();
  if(win == true){
    stop();
  }
  delay(800);
}

/* =================================== *\
          DEROULEMENT DU JEU
\* =================================== */

void play(int index){
  Joueur[index][3] = Joueur[index][4];
  cases[Joueur[ind][4]][2] = 0;
  moveRules();
}

void lancer(int id){ //jet de dés
  for(int i=0; i<nbreDes; i++){
    resDes[i] = (int)Math.floor(random(1,7));
    des(i, resDes[i]);
    totalDes = totalDes + resDes[i];
    print("dé = "+resDes[i]+" ");
  }
  textSize(20);
  fill(0);
  text("Total des dés : "+totalDes, 90, 70);
}

void outOfRange(){  //anti-dépassement
  if(Joueur[ind][4]>63){
    int out = Joueur[ind][4]-63;
    Joueur[ind][4] = 63-out;
  }
}

void initDice(){
  for (int i=0; i<nbreDes; i++){
    resDes[i] = 0;
  }
  totalDes = 0;
}

/* =================================== *\
          REGLES DU JEU
\* =================================== */
/* ====== Au commencement ============ */
void moveRules(){
  isHandicapeRule();
  Joueur[ind][4] = Joueur[ind][4]+totalDes;
  //premier Tour
  if(nbreTour<1){
    startRule();
  }
  
  //pendant la partie
  if(Joueur[ind][4] == 9 || Joueur[ind][4] == 18 || Joueur[ind][4] == 27 || Joueur[ind][4] == 36 || Joueur[ind][4] == 45 || Joueur[ind][4] == 54 ){
    cases[Joueur[ind][4]][2] = 0;
    Joueur[ind][4] = Joueur[ind][4]+totalDes;
    cases[Joueur[ind][4]][2] = ind;
  }
  if(Joueur[ind][4] == 19){
    if(Joueur[ind][5] == 0){
      Joueur[ind][5] = 2;
    }else if(Joueur[ind][5]>0){
      Joueur[ind][5]--;
    }
    cases[Joueur[ind][4]][2] = ind;
  }
  outOfRange();
  if(Joueur[ind][4] == 3 || Joueur[ind][4] == 52){
    if(Joueur[ind][5] == 0){
      Joueur[ind][5] = 999;
    }else if(Joueur[ind][5]>0){
      Joueur[ind][5]--;
    }
    cases[Joueur[ind][4]][2] = ind;
  }
  if(Joueur[ind][4] == 58){
    Joueur[ind][4] = 0;
    cases[Joueur[ind][4]][2] = 0;
    cases[0][2] = ind;
  }
  
  isPlayerRule();
  
  if(Joueur[ind][4] == 63){
    String text= "C'est gagné DORA !! Le joueur "+ind+" sur la case "+Joueur[ind][4];
    println("le joueur "+ind+" à gagner !");
    redraw();
    textSize(16);
    fill(0, 0, 0);
    text(text, 300, 110);
    win = true;
    stop();
  }
}

void startRule(){
  if(totalDes == 9){
    for(int i=0; i<nbreDes; i++){
      if(totalDes-resDes[i] == 3 || totalDes-resDes[i] == 6){
        Joueur[ind][4] = 26;
        isPlayerRule();
        cases[26][2] = ind;
        continue;
      }else if(totalDes-resDes[i] == 5 || totalDes-resDes[i] == 4){
        Joueur[ind][4] = 53;
        isPlayerRule();
        cases[53][2] = ind;
        continue;
      }
    }
  }
  if(totalDes == 6){
    Joueur[ind][4] = 26;
    isPlayerRule();
    cases[26][2] = ind;
  }
}

void isPlayerRule(){
  if(cases[Joueur[ind][4]][2]>0){
    Joueur[cases[Joueur[ind][4]][2]][4] = Joueur[ind][3];
    cases[Joueur[ind][3]][2] = cases[Joueur[ind][4]][2];
    Joueur[cases[Joueur[ind][4]][2]][5] = 0;
  }
}

void isHandicapeRule(){
  if(Joueur[ind][5]==0){
    lancer(ind);
  }else if(Joueur[ind][5]>0){
    Joueur[ind][5]--;
  }
}

/* =================================== *\
          ELEMENTS DE JEU
\* =================================== */
/* ====== Joueur en cours ============ */
void pion(int index){
  int R = Joueur[index][0];
  int G = Joueur[index][1];
  int B = Joueur[index][2];
  println("joueur "+ind+" en case "+Joueur[ind][4]);
  fill(R,G,B);
  rect(cases[Joueur[index][4]][0]+25, cases[Joueur[index][4]][1]-14, 8, 17, 25);  
}
/* ====== autres joueurs ============ */
void pion(){
  for(int i=0; i<nbreJoueur; i++){
    int R = Joueur[i][0];
    int G = Joueur[i][1];
    int B = Joueur[i][2];
    fill(R,G,B);
    cases[Joueur[i][4]][2] = i;
    rect(cases[Joueur[i][4]][0]+25, cases[Joueur[i][4]][1]-14, 8, 17, 25);
  }
}
/* ====== tableau d'annonce ========= */
void joueur(){
  for(int i=0; i<nbreJoueur; i++){
    int R = Joueur[i][0];
    int G = Joueur[i][1];
    int B = Joueur[i][2];
    fill(R,G,B);
    rect(640, (i*25)+50, 8, 17, 25);
    textSize(16);
    if(i == ind){
      fill(255,0,0);
    }else{
      fill(0,0,0);
    }
    text("Joueur "+(i+1), 670, (i*25)+65);
  }
}

/* ====== Dés ======================= */
void des(int id, int value){
  fill(255);
  rect(90+(id*80),80,60,60,10);
  fill(0);
    int x=0;
  int y=0;
  int iteration = 1;
  for (int b = 1; b <= value; b++) {
    if(value%2 == 1){
      if(b<6 && iteration==1){
        x = 120;
        y = 110;
      }else if(b%2 == 0 && iteration<=3){
        x = 105;
        y = 95;
      }else if(b%2 == 1 && iteration<=3){
        x = 135;
        y = 125;
      }else if(b%2 == 1 && iteration>3){
        x = 135;
        y = 95;
      }else if(b%2 == 0 && iteration>3){
        x = 105;
        y = 125;
      }
    }else if(value%2 == 0){
      if(iteration>4 && b%2 == 0){
        x = 135;
        y = 110;
      }else if(iteration>4 && b%2 == 1){
        x = 105;
        y = 110;
      }else if(iteration%2 == 1 && b<3){
        x = 105;
        y = 95;
      }else if(iteration%2 == 0 && b<3){
        x = 135;
        y = 125;
      }else if(iteration%2 == 1 && b>=3){
        x = 135;
        y = 95;
      }else if(iteration%2 == 0 && b>=3){
        x = 105;
        y = 125;
      }
    }
    ellipse(x + (id*80), y, 12, 12);
    iteration++;
  }
}

void plateau(){
  background(255, 255, 255);
  int posX;
  int posY;
  for(int i=0; i<nbreCase; i++){    if (i==9 || i==18 || i==27 || i==36 || i==45 || i==54) {
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
    if(i<29){
      cases[i][0] = 30+(i*30);
      cases[i][1] = (30);
    }else if(i<35){
      cases[i][0] = cases[28][0]+30;
      cases[i][1] = 60+((i-30)*30);
    }else if(i<64){
      cases[i][0] = (cases[28][0]-((i-35)*30));
      cases[i][1] = cases[34][1];
    }
    ellipse(cases[i][0]+30, cases[i][1], 20, 20);    textSize(8);
    if (i==3 || i==52||i==58) {
      fill(255);
    } else {
      fill(0);
    }
    String text;
    if (i==0) {
      text="START";
      posX = cases[i][0]+20;
      posY = cases[i][1]+23;
    } else {
      text=""+i+"";
      posX = cases[i][0]+26;
      posY = cases[i][1]+3;
    }
    text(text, posX,  posY);
  }
}
