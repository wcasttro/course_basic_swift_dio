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




