import UIKit

// 1.- Calcular y generar una lista con los 100 primeros números primos y hacer un print de los últimos 10.

func es_primo(numero: Int) -> Bool{
    var esPrimo = false
    for n in 2 ..< numero{
        if numero % n == 0 {
            esPrimo = true
        }
    }
    return esPrimo
}


var resultadoPrimos = listaPrimos(2)

func listaPrimos(_ num: Int) -> [Int] {
    var indice = num
    var listaFinal: [Int] = []
    while listaFinal.count < 100 {
        if !es_primo(numero: indice) {
            listaFinal.append(indice)
        }
        indice += 1
    }
    return listaFinal
}


print(resultadoPrimos.suffix(10))

// 2.- Calcular la suma de los primeros 50 números primos y hacer un print del resultado.


var suma = 0
for i in 0 ... 49 {
    suma = suma + resultadoPrimos[i]
}
print(suma)



// 3.- Dada la siguiente lista, obtener todos los elementos que contengan más de dos vocales: val players: [String] = [“Vinicius”, “Messi”, “Ronaldo”, “Pedri”, “Mbappe”, “Modric”, “Militao”, “Morata”, “Valverde”, “Benzema”, “Piqué” ]

var players: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde", "Benzema", "Pique"]

let vocales: Array = ["a", "e", "i", "o", "u"]

var result = [String]()
for jugador in players {
  var numVocales = 0
  for char in jugador {
    let lowercasedChar = char.lowercased()
    if vocales.contains(lowercasedChar) {
      numVocales += 1
    }
  }

  if numVocales > 2 {
    result.append(jugador)
  }
}

print(result)
    

// 4.- Crear un enumerado que permita indicar la posición en el campo de un jugador de fútbol, por ejemplo: Portero, Lateral Derecho, Central, Lateral Izquierdo, Mediocentro, Extremo Derecha, Extremo Izquierda, Delantero, etc

enum Posiciones {
    case portero
    case lateralDerecho
    case central
    case lateralIzquierdo
    case mediocentro
    case mediapunta
    case extremoDerecha
    case extremoIzquierda
    case segundaPunta
    case delanteroCentro
}


// 5.- Crear una clase, con los atributos necesarios, para representar a los miembros que participan en una selección del mundial y un enumerado que los diferencie por tipo, por ejemplo: Jugador, Seleccionador, Médico, etc.

enum PlayerType {
    case portero
    case defensa
    case mediocentro
    case delantero
    case seleccionador
    case segundoSeleccionador
    case medico
}

class Equipo {
    var nombre: String
    var seleccionador: String
    var jugador: [Jugadores]

  init(name: String, coach: String, players: [Jugadores]) {
      self.nombre = name
      self.seleccionador = coach
      self.jugador = players
  }
}

class Jugadores {
    var nombre: String
    var anno: Int
    var posicion: PlayerType

  init(name: String, age: Int, type: PlayerType) {
      self.nombre = name
      self.anno = age
      self.posicion = type
  }
}

// No se si lo que necesitas es tambien el iniciador pero lo dejo indicado por si acaso


// 6.- Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.

class MundialQatar {
  var anno: Int
  var equipos: [Equipo]

  init(year: Int, teams: [Equipo]) {
    self.anno = year
    self.equipos = teams
  }
}

class Partidos {
  var equipoLocal: Equipo
  var equipoVisitante: Equipo
  var resultado: String

  init(equipoLocal: Equipo, equipoVisitante: Equipo, resultado: String) {
    self.equipoLocal = equipoLocal
    self.equipoVisitante = equipoVisitante
    self.resultado = resultado
  }
}

var teams = [
  Equipo(name: "Qatar", coach: "Félix Sánchez", players: []),
  Equipo(name: "Ecuador", coach: "Gustavo Alfaro", players: []),
  Equipo(name: "Senegal", coach: "Aliou Cissé", players: []),
  Equipo(name: "Países Bajos", coach: "Louis Van Gaal", players: []),
  Equipo(name: "Inglaterra", coach: "Gareth Southgate", players: []),
  Equipo(name: "Irán", coach: "Carlos Queiroz", players: []),
  Equipo(name: "Estados Unidos", coach: "Gregg Berhalter", players: []),
  Equipo(name: "Gales", coach: "Robert Page", players: []),
  Equipo(name: "Argentina", coach: "Lionel Scaloni", players: []),
  Equipo(name: "Arabia Saudi", coach: "Hervé Renard", players: []),
  Equipo(name: "México", coach: "Gerardo Martino", players: []),
  Equipo(name: "Polonia", coach: "Czesław Michniewicz", players: []),
  Equipo(name: "Francia", coach: "Didier Deschamps", players: []),
  Equipo(name: "Australia", coach: "Graham Arnold", players: []),
  Equipo(name: "Dinamarca", coach: "Kasper Hjulmand", players: []),
  Equipo(name: "Túnez", coach: "Jalel Kadri", players: []),
  Equipo(name: "España", coach: "Luis Enrique", players: []),
  Equipo(name: "Costa Rica", coach: "Luis Fernando Suárez", players: []),
  Equipo(name: "Alemania", coach: "Hansi Flick", players: []),
  Equipo(name: "Japón", coach: "Hajime Moriyasu", players: []),
  Equipo(name: "Bélgica", coach: "Roberto Martínez", players: []),
  Equipo(name: "Canadá", coach: "John Herdman", players: []),
  Equipo(name: "Marruecos", coach: "Walid Regragui", players: []),
  Equipo(name: "Croacia", coach: "Zlatko Dalić,", players: []),
  Equipo(name: "Brasil", coach: "Tite", players: []),
  Equipo(name: "Serbia", coach: "Dragan Stojković", players: []),
  Equipo(name: "Suiza", coach: "Murat Yakin", players: []),
  Equipo(name: "Camerún", coach: "Rigoberto Song", players: []),
  Equipo(name: "Portugal", coach: "Fernando Santos", players: []),
  Equipo(name: "Ghana", coach: "Otto Addo", players: []),
  Equipo(name: "Corea del Sur", coach: "Paulo Bento", players: []),
  Equipo(name: "Uruguay", coach: "Diego Alonso", players: []),
]


// 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
//                Partido: España 3 - 1 Brasil


var matches = [Partidos]()

while !teams.isEmpty {
  var localIndex = Int.random(in: 0..<teams.count)
  var localTeam = teams[localIndex]
  teams.remove(at: localIndex)

  var visitanteIndex = Int.random(in: 0..<teams.count)
  var visitanteTeam = teams[visitanteIndex]
  teams.remove(at: visitanteIndex)

    var localGol = Int.random(in: 0...7)
    var visitanteGol = Int.random(in: 0...7)
    var result = "\(localGol) - \(visitanteGol)"
    matches.append(Partidos(equipoLocal: localTeam, equipoVisitante: visitanteTeam, resultado: result))
}

for match in matches {
  print("Partido: \(match.equipoLocal.nombre) vs \(match.equipoVisitante.nombre): \(match.resultado)")
}


