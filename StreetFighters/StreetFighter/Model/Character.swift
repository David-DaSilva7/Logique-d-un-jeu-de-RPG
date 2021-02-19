//
//  Character.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Classe charactere comprenant les style de chaque personnage
class Character {
    
    // nom du personnage
    var name: String
    
    //Point de vie du personnage
    var lifePoint: Int
        
    //Tableau montrant l'ensemble des 3 personnages de chaque joueur
    var allCharacters: [Character] = []
    
    // Arme
    var weapon: Weapon
    
    //Initialiser tous les éléments
    
    init(name: String, lifePoint: Int, weapon: Weapon) {
        self.name = name
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
    
    //Soigner de 15 points de vie un personnage
    func healCharacter() {
        lifePoint += 15
    }
    
}
