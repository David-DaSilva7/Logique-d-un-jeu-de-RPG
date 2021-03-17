//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 10/03/2021.
//

import Foundation

// Creer la classe game
class Game {
    
    static var playerTurn = PlayerTurn()
    
    // Switch player
    static func switchPlayer() {
        switch Game.playerTurn {
        case .playerOne:
            Game.playerTurn = .playerTwo
        case .playerTwo:
            Game.playerTurn = .playerOne
        }
    }
    
    // fonction pour introduire la partie
    static func StartGame() {
        
        print("Street Fighter!!!")
        print("Street Fighter est un jeu qui oppose 2 équipes composées de 3 personnages dans un combat sanglant")
        print("Le combat commence, au tour par tour, le joueur 1 choisit le personnage de son équipe qui va combattre, si la partie n'est pas terminée, c'est au tour du joueur 2")
        print("Si un coffre apparait, vous pouvez prendre l'arme du coffre")
        print("Si l'intégralité de votre équipe n'a plus de point de vie, la partie est terminée")
        print("Appuyez sur entrer pour commencer la partie")
        if readLine() != nil {
            Game.createTeams()
        }
    }
    
    // Fonction pour créer son équipe
    static func createTeams(){
// Équipe du joueur 1
        for i in 0...2 {
            if i == 0 {
                print("\(playerOne.name) choisissez le nom de votre 1er combattant")
            } else if i == 1 {
                print("\(playerOne.name) choisissez le nom de votre 2ème combattant")
            } else {
                print("\(playerOne.name) choisissez le nom de votre 3ème combattant")
            }
            if let named = readLine() {
                print("Votre combattant se nomme \(named)")
                playerOne.characters.append(Character(name: "\(named)", lifePoint: lifePoints[i], weapon: weapons[i]))
            }
        }
        print("Votre équipe est constituée de :")
        print(""
                + "\n1. \(playerOne.characters[0].name) à \(playerOne.characters[0].lifePoint) PV et inflige \(playerOne.characters[0].weapon.damage) dégats avec une \(playerOne.characters[0].weapon.name) "
                + "\n2. \(playerOne.characters[1].name) à \(playerOne.characters[1].lifePoint) PV et inflige \(playerOne.characters[1].weapon.damage) dégats avec un \(playerOne.characters[1].weapon.name)"
                + "\n3. \(playerOne.characters[2].name) à \(playerOne.characters[2].lifePoint) PV et inflige \(playerOne.characters[2].weapon.damage) dégats avec une \(playerOne.characters[2].weapon.name) \n"
        )
// Équipe du joueur 2
        for j in 3...5 {
            if j == 3 {
                print("\(playerTwo.name) choisissez le nom de votre 1er combattant")
            } else if j == 4 {
                print("\(playerTwo.name) choisissez le nom de votre 2ème combattant")
            } else {
                print("\(playerTwo.name) choisissez le nom de votre 3ème combattant")
            }
            if let named = readLine() {
                print("Votre combattant se nomme \(named)")
                playerTwo.characters.append(Character(name: "\(named)", lifePoint: lifePoints[j], weapon: weapons[j]))
            }
        }
        print("Votre équipe est constituée de :")
        print(""
                + "\n1. \(playerTwo.characters[0].name) à \(playerTwo.characters[0].lifePoint) PV et inflige \(playerTwo.characters[0].weapon.damage) dégats avec une \(playerTwo.characters[0].weapon.name) "
                + "\n2. \(playerTwo.characters[1].name) à \(playerTwo.characters[1].lifePoint) PV et inflige \(playerTwo.characters[1].weapon.damage) dégats avec un \(playerTwo.characters[1].weapon.name)  "
                + "\n3. \(playerTwo.characters[2].name) à \(playerTwo.characters[2].lifePoint) PV et inflige \(playerTwo.characters[2].weapon.damage) dégats avec un \(playerTwo.characters[2].weapon.name)  \n"
        )
        print("Appuyez sur entrer pour commencer le combat" )
        if readLine() != nil {
            Game.startBattle()
        }
    }
    
    
    
    // fonction commencer le combat
    static func startBattle() {
        print("Combatez!!!!")
        
        while playerOne.characters.count != 0 || playerTwo.characters.count != 0 {
            
            if playerTurn == .playerOne {
                playerOne.attackTeam()
            } else {
                playerTwo.attackTeam()
            }
            
        }
        print("La partie est terminée, appuyer sur entrer pour afficher le vainqueur")
        if readLine() != nil {
            Game.displayWinner()
        }
    }
    
    // fonction qui annonce le vainqueur
    static func displayWinner() {
        
        print("Récapitulation des équipes :")
        print("Équipe du joueur 1 :")
        print("\(playerOne.characters[0].name): \(playerOne.characters[0].lifePoint)PV, \(playerOne.characters[0].weapon.damage) dégats avec une \(playerOne.characters[0].weapon.name)")
        print("\(playerOne.characters[1].name): \(playerOne.characters[0].lifePoint)PV, \(playerOne.characters[1].weapon.damage) dégats avec un \(playerOne.characters[1].weapon.name)")
        print("\(playerOne.characters[2].name): \(playerOne.characters[2].lifePoint)PV, \(playerOne.characters[2].weapon.damage) dégats avec une \(playerOne.characters[2].weapon.name)")
        
        print("Équipe du joueur 2 :")
        print("\(playerTwo.characters[0].name): \(playerTwo.characters[0].lifePoint)PV, \(playerTwo.characters[0].weapon.damage) dégats avec une \(playerTwo.characters[0].weapon.name)")
        print("\(playerTwo.characters[1].name): \(playerTwo.characters[0].lifePoint)PV, \(playerTwo.characters[1].weapon.damage) dégats avec un \(playerTwo.characters[1].weapon.name)")
        print("\(playerTwo.characters[2].name): \(playerTwo.characters[2].lifePoint)PV, \(playerTwo.characters[2].weapon.damage) dégats avec une \(playerTwo.characters[2].weapon.name)")
        
        if playerOne.characters.count == 0  {
            
            print("\(playerTwo) est le meilleur combattant")
            
        } else if playerTwo.characters.count == 0 {
            
            print("\(playerOne) est le meilleur combattant")
        }
    }
}


enum PlayerTurn {
    case playerOne
    case playerTwo
}

extension PlayerTurn {
    init() {
        self = .playerOne
    }
}

