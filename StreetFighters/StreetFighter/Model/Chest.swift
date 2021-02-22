//
//  Chest.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Arme dans le coffre
class Chest {
    
    
// arme aleatoire qu'on peut avoir dans un coffre
    let randomWeapons: [Weapon] = [
    Weapon(damage: 35 , name: "Hache 🪓"),
    Weapon(damage: 30, name: "Couteau 🔪"),
    Weapon(damage: 25, name: "Ciseau ✂️")
           ]

    func randomWeapon() -> Weapon {
        let ramdomIndex = arc4random_uniform(UInt32(randomWeapons.count))
        return randomWeapons[Int(ramdomIndex)]
    }
}
