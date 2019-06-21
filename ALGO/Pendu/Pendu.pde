//nbreJoueur = Integer.parseInt();
String[] tabMots = {"bonjour", "salut", "coucou", "welcome", "oulala", "merveilleux", "mystere"}; 
String motMystere = tabMots[(int) Math.floor(random(tabMots.length))];
char[][] lettreATrouver = new char[motMystere.length()][2];
char[] lettres = motMystere.toCharArray();
int fault;
boolean win;
boolean loose;

void setup(){
  size(800, 600);
  println(motMystere);
  for(int i=0; i<lettres.length; i++){
    lettreATrouver[i][0] = lettres[i];
  }
  fault = 9;
  win = false;
  loose = false;
  
}

void draw(){
  background(0,0,0);
  lettreTrouver();
  word();
  gagner();
  pendu();
  if(win == true || loose == true){
    stop();
  }
}

void keyReleased(){
  key();
  println(key);
}

void key(){ //<>//
  char lettre = key;
  int fail = motMystere.length();
  for(int i=0; i<motMystere.length(); i++){
    if(lettre == lettres[i]){
      lettreATrouver[i][1] = 1;
    }else if(lettre != lettres[i]){
      fail--;
    }
  }
  if(fail == 0){
    fault--;
  }
  println(fail);
  println(fault);
}

void word(){
  for(int i=0; i<motMystere.length(); i++){
    fill(255,255,255);
    rect(35+(i*30), 400, 25, 5);
  }
}

void lettreTrouver(){
  for(int i=0; i<motMystere.length(); i++){
    if(lettreATrouver[i][1] > 0){
      textSize(30);
      fill(255);
      text(str(lettreATrouver[i][0]), (i*30)+40, 390);
    }
  }
}

void gagner(){
  int total = 0;
  String text = "";
  for(int i=0; i<motMystere.length(); i++){
    total = total+lettreATrouver[i][1];
    if(total == motMystere.length()){
      text = " GAGNER !! ";
    }
  }
  if(fault == 0){
      loose = true;
      text = " PERDU :'( ";
    }
  textSize(40);
  fill(255,255,255);
  text(text, 40, 200);
}

void pendu(){
  fill(255);
  if(fault <= 8){
    rect(500, 400, 70, 5, 45);
  }
  if(fault <=7){
    rect(520, 250, 5, 150, 5);
  }
  if(fault <= 6){
    rect(520, 250, 90, 5, 45);
  }
  if(fault <= 5){
    rect(610, 250, 5, 20);
  }
  if(fault <= 4){
    ellipse(613, 280, 20, 20);
  }
  if(fault <= 3){
    rect(610, 290, 5, 40, 5);
  }
  if(fault <= 2){
    rect(593, 300, 40, 5, 5);
  }
  rotate(.3);
  if(fault <= 1){
    rect(680, 130, 5, 40, 5);
  }
  rotate(-.6);
  if(fault == 0){
    rect(487, 493, 5, 40, 5);
  }
}
