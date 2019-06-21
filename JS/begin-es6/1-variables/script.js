//1.1 Types simples

let name = 'Jacques'
let age = 80
let useless = 'something'

console.log(name, age, useless)

age += 1
useless = 14

console.log(name, age, useless)

console.log("" +
    "l'élément let permet de déclarer une variable modifiable" +
    '\n' +
    "l'erreur du const est du au fait que la constante n'est pas alterable de cette facon" +
    "\n" +
    " on peut alteré les valeur de variable dans un objet constant dans son scope"
)
//----------------------//
//1.2 Tableaux

const fruits = ['apple', 'pear', 'cherry']
const vegetables = ['potato', 'curlyflower', 'tomato']

console.log(fruits, vegetables)

fruits.push('banana')
vegetables.pop()

console.log(fruits, vegetables)

console.log('' +
    "l'absence d'erreures : on ne change pas la constante mais les valeur de variable a l'interieure de celle-ci"
)
//----------------------//
//1.3 Objets

const settings = {
    sound: true,
    music: false,
    graphics: 'high',
    resolution: [1920, 1080]
}

let savedGame = {
    time: 384,
    score: 47,
    opponent: 'Lolo'
}

console.log(settings, savedGame)

console.log(
    "on tente ici de modifié le type d'une constante d'ou une erreur" + "\n" +
    "j'ai donc redéfini mon objet savedGame en let"
)

savedGame = {}
settings.music = true
settings.resolution = [3840, 2160]

console.log(settings, savedGame)

