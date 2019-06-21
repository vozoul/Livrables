char[] alphabet = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
int decalage = 0;
char caractere;
char lettre;
String texte="";
String texteCoder = "";
String texteDecoder = "";

void setup(){
  texte = "Bonjour je m'appel Vincent";
  //println(texte);
  encrypte(6);
  println("texte crypter = "+texteCoder);
  decrypte(texteCoder, 6);
  println("texte décrypter = "+texteDecoder);
}


void encrypte(int decalage){
  for(int i=0; i<texte.length(); i++){                                               //boucle sur la longeur du texte
    texte = texte.toUpperCase();
    lettre = texte.charAt(i);                                                        //le caractere a controler
    for(int a=0; a<alphabet.length; a++){                                            //boucle sur le tableau de caractere
      if(lettre == alphabet[a] && (a+decalage)<alphabet.length){                     //controle la correspondance du caractere ET qu'il ne dépasse pas le tableau de caractere
        caractere = alphabet[a+decalage];        
      }else if(lettre == alphabet[a] && (a+decalage)>=alphabet.length){              //controle la correspondance du caractere ET si il dépasse du tableau de caractere
        caractere = alphabet[(a+decalage)-alphabet.length];
      }else if(lettre == ' ' || lettre == '\'' || lettre == '.'){                                                       //controle si c'est un espace
        caractere = ' ';
      }
    }
    texteCoder = texteCoder+caractere;                                               //ajoute a la phrase de sortie la lettre coder
  }
}

void decrypte(String code, int calage){
  for(int i=0; i<code.length(); i++){
    lettre = code.charAt(i);
    for(int a=0; a<alphabet.length; a++){
      if(lettre == alphabet[a] && a-calage>=0){
        caractere = alphabet[a-calage];
      }else if(lettre == alphabet[a] && a-calage<0){
        caractere = alphabet[a-calage+alphabet.length];
      }else if(lettre == ' ' || lettre == '\'' || lettre == '.'){
        caractere = ' ';
      }
    }
    texteDecoder = texteDecoder+caractere;
  }
}
