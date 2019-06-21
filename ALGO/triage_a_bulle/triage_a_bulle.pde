
int tab[] = new int [10];
void setup() {
remplirTableau();
triBulleCroissant();
triBulleDecroissant();
}

void remplirTableau(){
 int i=2000;
 //ce code génère un nombre (de type float) aléatoire compris entre 0 et 8 L’objectif est d’afficher le nombre de cartons présent dans chacun des tas à l’issue du déchargement d’un camion.
// Nous sommes dans l'ancien local
   while (i > 0){
       float poids = random(20);
       i--;
     if (poids<=1){
       tab[0]++;
     }
     else if (poids>1 && poids<3){
       tab[1]++;
     }
     else if (poids>3 && poids<5){
       tab[2]++; 
     }
     else if (poids>5 && poids<7){
       tab[3]++;
     }  
     else if (poids>7 && poids<9){
       tab[4]++;
     }  
     else if (poids>9 && poids<11){
       tab[5]++;
     }  
     else if (poids>11 && poids<13){
       tab[6]++;
     }
     else if (poids>13 && poids<15){
       tab[7]++;
     }
     else if (poids>15 && poids<17){
       tab[8]++;
     }
     else if (poids>17){
       tab[9]++;
     }
 } 
 for (int h = 0; h <= 9; h++){
   print (" ",tab[h]);
 }
 println ("   il reste",i,"en stock");

}
/*
void tri(){
  int triage;
  for (int h = 0; h <= 3; h++){
  if (tab [0] > tab[1]) {
    triage = tab[0];
    tab[0] = tab[1];
    tab[1] = triage;
  }
   if (tab [1] > tab[2]) {
    triage = tab[1];
    tab[1] = tab[2];
    tab[2] = triage;
  }
   if (tab [2] > tab[3]) {
    triage = tab[2];
    tab[2] = tab[3];
    tab[3] = triage;
  } 
   for (int h = 0; h <= 3; h++){
   print (" ",tab[h]);
}}*/

void triBulleCroissant(){
    int longueur = tab.length;
    int temp = 0;
    boolean permut; // initialisation du boolean
    permut = true; //initialisation du boolean à vrai
    while (permut) { //a faire tant que boolan est égale à vrai
      permut = false; //passez le boolean a faux
      
      for (int i = 0; i < longueur - 1; i++) { // pour toute la longueur du tableau - 1 pour pouvoir agir sur les deux dernière entrée
       
        if (tab[i] > tab[i + 1]) { // si la ième entrée est suprérieur a la ième entrée + 1 (i + 1) alors...
          
          temp = tab[i]; // le temp prend la valeur de la ième entrée
          tab[i] = tab[i + 1]; // la ième entrée prend la valeur de l'entrée suivante du tableau (i + 1)
          tab[i + 1] = temp; // l'entrée suivante  (i + 1) prend la valeur de temp
          // a partir de la deux entrée du tableau on permuter
          permut = true; // le boolean repasse a vrais pour pouvoir refaire la boucle tant qu'il y'a eu permutationhg 
        }
      }
    } 
    
    
    print ("par ordre croissant");
    for (int h = 0; h <= 9; h++){
   print (" ",tab[h]);
}
  }
 
 void triBulleDecroissant() {
    int longueur = tab.length;
    int tampon = 0;
    boolean permut;
 
    do {
      // hypothèse : le tableau est trié
      permut = false;
      for (int i = 0; i < longueur - 1; i++) {
       
        if (tab[i] < tab[i + 1]) {
          
          tampon = tab[i];
          tab[i] = tab[i + 1];
          tab[i + 1] = tampon;
          permut = true;
        }
      }
    } while (permut);
    print ("   et par ordre decroissant");
  for (int h = 0; h <= 9; h++){
   print (" ",tab[h]);
}  
}
 
