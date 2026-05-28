semelhante ao type, porem com diferenças e melhorias

interface nome {

}

interface pode ser herdado

semelhante a classes, porem somente para tipar

é como se fosse uma classe tipada, uma tupla classe

voce seta as propriedades e seus tipos na interface, e com isso quem herdar essa interface precisa ter as propriedades com os tipos que estao na interface

exemplo simples

interface CelestialBody {
    name: string
    mass: number
}

interface Star extends CelestialBody {
    age: number
    planets: Planet[]
}

interface Planet extends CelestialBody {
    population: number
    createSatellite: (name:string) => void
}

let sun: Star
sun.name = "Sol"
sun.mass = 1.989 * (10 ** 30)
Sun.age = 4.603 * (10 ** 9)


herança de interface é mais visivelmente agradavel que heraça de types


as classes podem implementar a interface

class MilkWayPlanet implements Planet {

}

desse jeito a classe cria um contrato com a interface, ou seja, a classe precisa ter tudo que a interface tem como propriedade

com isso ficaria assim:

class MilkWayPlanet implements Planet {
    name: string
    mass: number
    population: number

constructor(name: string, mass: number, population: number){
    this.name = name
    this.mass = mass
    this.population = population
}
}



uma diferença de type pra interface, é que o type pode ter somente um criado se nao da erro
interface, se voce criar outra com o mesmo nome, o typescript incrementa tudo dentro da interface existente, adicionando mais propriedades dentro

