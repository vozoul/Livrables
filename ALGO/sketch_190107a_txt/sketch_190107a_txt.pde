//déclaration des variables
// syntaxe: `type nom "logique" valeur;`
//les types : int = entier, float = réel, char = a,b,c (char a='$' (1 seul caractere)),  String = chaine de caractere, String[] = tableau
//tableau syntaxe: `string[] nom_variable = {"element1", "element2", ..., "elementN"};`

int batA = 34;
int batB = 0;
int Camion[] = {0,0,0,0,0};
int tas1 = 0;
int tas2 = 0;
int tas3 = 0;
int tas4 = 0;
float masse[] = {0,0,0,0};
float charge = 0;
int index = 0;
int carton = 1;
int[] capaMax = {3,4,2,1,3,2,5,2,2,1,1,3,3,3,4};
int[] cartons = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int total_carton = 0;
int echange = 1;
int b1;
int b2;

//Démarrage du programme
void setup(){
while(batA > 0){
aller();
retour();
};


println("Total trajet effectué :");
println(tas1+" Cartons de 1 kilo et moins");
println(tas2+" Cartons de 1 à 3 kilos");
println(tas3+" Cartons de 3 à 5 kilos");
println(tas4+" Cartons de plus de 5 kilos");
println("");
println("");

println("demenagement terminé avec "+batB+" Cartons.");
println("Pour une charge totale de : "+charge+" kilos");

rangement();
}


//Methodes
void aller(){
  while(Camion[0] < 9 && batA > 0){
    tri();
    batA--;
    Camion[0]++;
  }
  println("Trajet effectué :");
  println("avec "+Camion[1]+" Cartons de 1 kilo et moins");
  println("avec "+Camion[2]+" Cartons entre 1 et 3 kilos");
  println("avec "+Camion[3]+" Cartons entre 3 et 5 kilos");
  println("avec "+Camion[4]+" Cartons de plus de 5 kilos");
  println("poids total du chargement : "+(masse[0]+masse[1]+masse[2]+masse[3]));
  charge = charge+masse[0]+masse[1]+masse[2]+masse[3];
}

void retour(){
  while(Camion[0] > 0){
    batB++;
    Camion[0]--;
  }
  resetCarton();
}

void tri(){
  float poids = random(8);
  if (poids <= 1){
    Camion[1]++; 
    tas1++;
    masse[0] = masse[0] + (Camion[1]*poids);
  }
  else if (poids <= 3){
    Camion[2]++;
    tas2++;
    masse[1] = masse[1] + (Camion[2]*poids);
  }
  else if (poids <= 5){
    Camion[3]++;
    tas3++;
    masse[2] = masse[2] + (Camion[3]*poids);
  }
  else{
    Camion[4]++;
    tas4++;
    masse[3] = masse[3] + (Camion[4]*poids);
  }
}

void rangement(){
    for(index = 0; index < 14; index++){
      while(total_carton > 0 || carton < capaMax[index]){ 
        total_carton--;
        cartons[index]++;
        carton++;
      }
      println("bureau "+index+" est plein avec "+carton+" cartons");
      carton = 1;
     }
}

void resetCarton(){
   Camion[1] = 0;
   Camion[2] = 0;
   Camion[3] = 0;
   Camion[4] = 0;
   masse[0] = 0;
   masse[1] = 0;
   masse[2] = 0;
   masse[3] = 0;
 }
