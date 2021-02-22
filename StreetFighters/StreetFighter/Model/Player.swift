//
//  Player.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Classe player
class Player {
    
    // nom du joueur 1 et du joueur 2
    var name: String
    
    // tableau des personnages
    var characters: [Character]
    
    init(name: String, characters: [Character]){
        self.name = name
        self.characters  = characters 
    }
    
    
    // recapitulatif de notre équipe
    func teamRecap() {
        
        for character in characters {
            print("tu as \(character.name) dans ton équipe")
        }
    }
    
    // Choisir son équipe
   func chooseTeam() {
     
     let maxCharacter = 3
     
     
     while characters.count < maxCharacter {
     
     charactersTeam()
     }
     teamRecap()
     }
    
    
    
    
    
}
