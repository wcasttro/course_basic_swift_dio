import UIKit

// Begin Sample Values
var myVariable = 42 // utiliza var para declarar variaveis, caso atribua um valor inteiro na declaração esse campo vai ser sempre int
myVariable = 50

let myConstant = 42 // utiliza let para declarar constant
let implicitInteger = 70
let implicitDouble = 70.0

let explictDouble: Double = 70  // ao explicitar o tipo, msm que valor não esteja claro, ele vai ser o tipo declarado
let label = "This witdh is "
let width = 94
let widthLabel = label + String(width) // concatenação e conversão de int em string


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruintSummary = "I have \(apples + oranges) pices of fruint"

// ao usar 3 aspas o texto é impresso com todos sem caracteres, incluse os não imprimiveies
let qutation = """
I have \(apples) apples. I have \(apples + oranges) pices of fruint
"""

// declaração de listas
var list = ["um","dois","três"]
list[1] = "doisssssss"

// dicionario - map
var dicionary = [
    "Pais": "Brasil",
    "Estado":"Sergipe"
]

dicionary["Pais"]
dicionary["Cidade"] = "Aracaju"

let emptyArray: [String] = []
let emptyDicionary: [String: Float] = [:]


// Control Flow
let individualScore = [19,12,45,0,78,7,5,9,6,490]
var teamScore = 0

for score in individualScore { // for
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? // dessa forma a variavel é chamada de opcional e pode ser nulo
print(optionalString == nil) // a palavra reservada em swift para nulo é nil

var optionalName: String?
var greeting = "Olá"
if let name = optionalName { // pegando valor opcional, se valor for diferente de nulo conteudo do if é executado
    greeting = "Olá, \(name)"
}

let nickName: String? = nil
let fullName: String = "Uma nome"
let informalGreeting = "Hi \(nickName ??  fullName)" // é possivel usar o operador ?? para verificar nil

// switch case
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("case one")
case "red pepper", "cucumbre":
    print("case two")
case let x where x.hasSuffix("papper"):
    print("case three")
default:
    print("default")

}

let interestingNumbers = [
    "Prime": [2,5,6,8],
    "Fibonacci": [1,4,6,89,0],
    "Square": [1,4,8,16, 25]
]

// interando dicionario
var largest = 0
var key = ""
for (_key, numbers) in interestingNumbers{
    for number in  numbers {
        if number > largest{
            largest = number
            key = _key
        }
    }
}

print(largest)
print(key)

// while
var n = 2
while n < 100 {
    n *= 2
}

// repeat while
print(n)
var m = 2
repeat {
    m *= 2
} while m < 100

print(m)

// for com range
var total = 0
for i in 0..<4{
    total += i
}

print(total)


// Funções e Closures
// é possivel utilizar paramentro nomeados
func greet(person: String, day: String) -> String{ //  para retornar algo utiliza '->' , caso contrario é um void, caso tenha retorno precisa determinar o tipo
    return "retornando string"
}
greet(person: "João", day:  "Tiesday")


// é possivel colocar um rotulo na variavel nomeada, assim quando a função a baixo for chamada o paramentro day é chamado com 'on'
func greet(_ person: String, on day: String) -> String{
    return "retornando string"
}
greet("nome", on: "Tuesday")


// é possivel retornar mais de um valor em uma função
func calculateStatics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    return (0,9, 9)
}

// forma de acesso do retorno de dupla
var result = calculateStatics(scores: [1,1,1,2,])
print(result.max)
print(result.2)

// funções podem retornar uma função
func makeIcrementer() -> ((Int) -> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    
    return addOne
}

var increment = makeIcrementer()
increment(7)

// usar função como argumento
func hasAnyMaches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMaches(list: numbers, condition: lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
} )


// Objetos e Classes
class ClassOne{ // os atributos precisa sem inicializados caso não sejam passados no contrutor
    var name: String = "nome"
    var vale: String = "teste"
}

var instance = ClassOne()
instance.name = "outro nome"


class ClassTwo{
    var name: String
    
    // o contrutor no swift se chama init
    init(name: String){
        self.name = name // o metodo self equivale ao this
    }
    
    // funciona como um dispose, é executado quando termina instancia
    deinit{
        self.name = ""
    }
    
    func run(){
        print("correr !!!")
    }
    
    var instance = ClassOne()
}

var instance2 = ClassTwo(name: "value")

// herança ClassThree herda da ClassTwo
class ClassThree: ClassTwo{
    
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    override func run(){
        print("correr muito")
    }
}

var instance3 = ClassThree(sideLength: 15.0, name: "nome")
instance3.run()



