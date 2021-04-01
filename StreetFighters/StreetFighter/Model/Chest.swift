//
//  Chest.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Class Chest with the news weapons
class Chest {
    // random weapon that you can have in a chest
    let randomWeapons: [Weapon] = [
        Weapon(damage: 45 , name: "un Parapluie🌂"),
        Weapon(damage: 20, name: "un Couteau 🔪"),
        Weapon(damage: 5, name: "un Ciseau ✂️")]
    // function that chooses the weapon randomly
    func randomWeapon() -> Weapon {
        let ramdomIndex = arc4random_uniform(UInt32(randomWeapons.count))
        return randomWeapons[Int(ramdomIndex)]
    }
}
