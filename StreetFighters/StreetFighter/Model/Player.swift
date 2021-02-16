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
    
    // tableau des characters
    var characters: [Character]
    
    init (name: String, characters: Character)
    self.name = name
    self.characters = characters
    

    // Les différents personnagesavec leur caractéristiques
    func charactersTeam() {
        print(" tu as \(characters.count) personnages dans ton équipe ")
        print("choisis ton combattant"
        + "\n1. Sangoku (100 Life, 20 Dégats)"
        + "\n2. Sangohan (90 Life, 25 Dégats)"
        + "\n3. Freezer (80 Life, 30 Dégats)"
        + "\n4. Krillin (85 Life, 27 Dégats)"
        + "\n5. Vegeta (100 Life, 20 Dégats)"
        + "\n6. Trunks (95 Life, 23 Dégats)"
        
        
    )

}


// choisir les personnages de notre équipe
    
func chooseCharacter() {

        if let choice = readLine() {
            
            switch choice {
                
            case "1":
              
                Sangoku
                
            case "2":
                
                Sangohan
                
            case "3":
                
                Freezer
                
            case "4":
                
                Krillin
                
            case "5":
                
                Vegeta
                
            case "6":
                
                Trunks
            
            default:
                print("Erreur")
            }
        }
    }


// Choisir son équipe
func chooseTeam() {
    
    let maxCharacter = 3
    
    init(maxCharacter: int) {
    self.maxCharacter = maxCharacter
}
    
    while characters.count < maxCharacter {
        
        charactersTeam()
        chooseCharacter()
    }
}
    
    
    
    
    
}
