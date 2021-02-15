//
//  Weapon.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Classe Weapon pour attribuer les dommages de chaque armes

class Weapon {
    
    //Nom du personnage et les dommage qu'effectue son arme sur les points de vie
    var damage: Int
    
    // initialiser
    init(damage: Int){
    
        self.damage = damage
    }
}
