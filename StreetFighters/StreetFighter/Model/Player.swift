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
    var charactersOne: [Character] = []
    var charactersTwo: [Character] = []
    
    init(name: String, charactersOne: [Character], charactersTwo: [Character]){
        self.name = name
        self.charactersOne = charactersOne
        self.charactersTwo = charactersTwo
    }
    
    // Fonction pour créer son équipe
    func createTeams(){
        for i in 0...2 {
            print("\(playerOne.name) choisissez le nom de votre combattant")
            if let named = readLine() {
                print("Votre combattant se nomme \(named)")
                charactersOne.append(Character(name: "\(named)", lifePoint: lifePoints[i], weapon: weapons[i]))
            }
            print("Votre équipe est constituée de :")
            print(""
                    + "\n1. \(charactersOne[0]) "
                    + "\n2. \(charactersOne[1]) "
                    + "\n3. \(charactersOne[2]) \n"
            )
        }
        for j in 3...5 {
            print("\(playerTwo.name) choisissez le nom de votre combattant")
            if let named = readLine() {
                print("Votre combattant se nomme \(named)")
                charactersTwo.append(Character(name: "\(named)", lifePoint: lifePoints[j], weapon: weapons[j]))
            }
        }
        print("Votre équipe est constituée de :")
        print(""
                + "\n1. \(charactersTwo[3]) "
                + "\n2. \(charactersOne[4]) "
                + "\n3. \(charactersOne[5]) \n"
        )
    }
}


