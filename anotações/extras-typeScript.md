Tuplas são arrays tipados e quantificados, ao criar, é definido os tipos dentro do array e por consequencia a quantidade de tipos, é a quantidade aceita pelo array.
Ex: let crew: [string, string ,string]
esse arrays só aceita 3 dados e do tipo string, fora isso da erro

uso comum no react em hook e state


enums são arrays com propriedades, que recebem seu valor de ordenação por padrao ou um valor em qualquer tipo de dados, é uma forma de deixar mais lipo e organizado a forma como se chama os dados armazenados no array ou no banco sem precisar ficar falando o falar ou o lugar dentro da lista

criar tipo 

Literal - let literal: "hello"
qualquer coisa diferente de "hello" da erro

tipo Union type
let option: "yes" | "No" | "maybe"
type Planet = "terra" | "venus"
let planet: Planet

assim criamos um tipo e uma variavel que recebe esse tipo