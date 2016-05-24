//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        
        self = velocidadInicial
    }
}

var vel = Velocidades(velocidadInicial: Velocidades.Apagado)


class Auto{
    
    var velocidad: Velocidades
    init(){
        
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        
        var actualInt : Int
        var velocidadCadenaString : String
        
        switch velocidad {
        case .Apagado:
            
            actualInt = velocidad.rawValue
            velocidadCadenaString = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            
            actualInt = velocidad.rawValue
            velocidadCadenaString = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            
            actualInt = velocidad.rawValue
            velocidadCadenaString = "Velocidad Media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
           
            actualInt = velocidad.rawValue
            velocidadCadenaString = "Velocidad Alta"
            velocidad = .VelocidadMedia
        }
        return (actualInt,velocidadCadenaString)
    }
}

var auto = Auto()

for i in 0...19{
    
    let tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}





