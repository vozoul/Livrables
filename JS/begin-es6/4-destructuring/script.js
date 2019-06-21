// //4.1 Découverte
//
// const [a, b, c] = [1, 2, 3, 4] //les a et b font reference au element du tableau a = index 0 = 1 et b = index 1 = 2
// console.log(a) //affiche 1
// console.log(b) //affiche 2
// console.log(c) //affiche 3
//
// const {first, last, age} = {first: 'Paul', last: 'Henta', age: 35}
// console.log(first)
// console.log(last)
// console.log(age)

//4.2 Application
for(var key in data){
    const {texte, dateDebut, dateFin} = data[key]
    console.log(texte, dateDebut, dateFin)
}