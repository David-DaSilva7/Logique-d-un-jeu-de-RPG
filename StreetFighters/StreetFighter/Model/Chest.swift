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
        Weapon(damage: 45 , name: "Parapluie🌂"),
        Weapon(damage: 20, name: "Couteau 🔪"),
        Weapon(damage: 5, name: "Ciseau ✂️")]
    
    // Fonction qui choisit l'arme aléatoire du coffre
    func randomWeapon() -> Weapon {
        let ramdomIndex = arc4random_uniform(UInt32(randomWeapons.count))
        return randomWeapons[Int(ramdomIndex)]
    }
}
