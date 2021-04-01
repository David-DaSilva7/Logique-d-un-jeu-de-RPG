//
//  Weapon.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Class Weapon with the characteristics of a weapon
class Weapon {
    // Name of the weapon and the damage done by its weapon on the points of life
    var name: String
    var damage: Int
    // Initialize
    init(damage: Int, name: String){
        self.name = name
        self.damage = damage
    }
}
