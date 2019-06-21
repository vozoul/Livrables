int an = 2;
int mois = 12;
int adult = 0;
int enfant = 1;
int couple = 0;


void setup(){
  for(int a=0; a<an; a++){
    //Calcul par mois
    for(int i=0; i<mois; i++){
      couple = enfant+adult;
      int tmp = enfant;
      enfant = adult;
      adult = adult+tmp;
    }
  }
println(couple+" couples de lapins en "+an+" an");
}

void calcul(){
}
