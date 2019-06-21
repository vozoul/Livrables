//2.1 Fonctions simples
const sayHello = () => {
    console.log('Hello')
}

const sayMyName = (first, last) => {
    console.log(first, last)
}

const sayMyAge = (age) => {
    console.log('You are ' + age + ' years old')
}

sayHello()
sayMyName('Odile', 'Crok')
sayMyAge(23)

//----------------------//
//2.2 this

const object = {
    color: 'red',
    shape: 'circle',
    threeDimensions: false,
    showThis: () => {
        console.log(object)
    },
}

object.showThis()
console.log(object.color)
console.log('ceci retourne le résultat de l\'objet et non l\'objet . et ce refere à l\'objet globale "window"')
//----------------------//
//2.3 Application

const odile = {
    name: {
        first: 'Odile',
        last: 'Crok'
    },
    age: 23,
    sayHello: () => {
        console.log('Hello')
    },
    sayMyName:() => {
        console.log(odile.name.first, odile.name.last)
    },
    sayMyAge: () => {
        console.log('You are ' + odile.age + ' years old')
    },
}

odile.sayHello()
odile.sayMyName()
odile.sayMyAge()