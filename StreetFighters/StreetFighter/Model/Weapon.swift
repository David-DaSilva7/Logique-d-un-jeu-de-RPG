//
//  Weapon.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Classe Weapon pour attribuer les dommages de chaque armes

class Weapon {
    
    
    //Nom de l'arme et les dommages qu'effectue son arme sur les points de vie
    var name: String
    var damage: Int
    
    // initialiser
    init(damage: Int, name: String){
    
        self.name = name
        self.damage = damage
        
    }
}
