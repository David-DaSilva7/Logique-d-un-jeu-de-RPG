//
//  Character.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Class Character including the characteristics of a character
class Character {
    // Character name
    var name: String
    // Character LifePoint
    var lifePoint: Int
    // Character Weapon
    var weapon: Weapon
    // Initialize
    init(name: String, lifePoint: Int, weapon: Weapon) {
        self.name = name
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
    // Heal your character for 15 life points
    func healCharacter() {
        lifePoint += 15
    }
}
