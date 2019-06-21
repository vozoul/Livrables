//3.1 Object.keys

const bus = {
    vehicle: 'Urbanway CNG 12',
    id: 3221,
    line: 'C6',
    paint: 'chrono',
    garage: {
        name: 'Sassenage',
        place: '47'
    },
    equipments: ['sae', 'tft', 'speech']
}

keyValue = (data) => {
    for(i = 0; i < Object.keys(data).length; i++)
        if(data === bus){
            console.log(Object.keys(data)[i], ":", Object.values(data)[i], "\n")
        }else{
            console.log(Object.keys(data)[i], ":", Object.values(data)[i].texte, "\n")
        }
}

//3.2 Object.values

keyValue(bus)
keyValue(data)