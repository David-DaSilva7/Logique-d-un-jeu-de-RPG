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
    var named = readLine()
    
    // tableau des characters
    var characters: [Character]
    

    // Les différents personnagesavec leur caractéristiques
    func charactersTeam() {
        print(" tu as \(characters.count) personnages dans ton équipe ")
        print("choisis ton combattant"
        + "\n1. Ryu (100 Life, 20 Dégats)"
        + "\n2. Ken (90 Life, 25 Dégats)"
        + "\n3. Ibuki (80 Life, 30 Dégats)"
        + "\n4. Gouken (85 Life, 27 Dégats)"
        + "\n5. Cody (100 Life, 20 Dégats)"
        + "\n6. Makoto (95 Life, 23 Dégats)"
        
        
    )

}


// choisir les personnages de notre équipe
    
func chooseCharacter() {

        if let choice = readLine() {
            
            switch choice {
                
            case "1":
              
                ryu
                characters.append(ryu)
                
            case "2":
                
                ken
                characters.append(ken)
            case "3":
                
                ibuki()
                characters.append(ibuki)
            case "4":
                
                gouken()
                characters.append(gouken)
            case "5":
                
                cody()
                characters.append(cody)
            case "6":
                
                makoto()
                characters.append(makoto)
                
            default:
                print("Erreur")
            }
        }
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
        chooseCharacter()
    }
    teamRecap()
}
    
    
 
    

}
