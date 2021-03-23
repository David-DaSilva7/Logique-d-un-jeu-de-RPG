//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 10/03/2021.
//

import Foundation

// Creer la classe game
class Game {
    
    static var numberRound = 0
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
        print("")
        print("Appuyez sur entrer pour commencer la partie")
        
        if readLine() != nil {
            Game.createTeams()
        }
    }
    
    // Fonction pour créer son équipe
    static func createTeams() {
        
        playerOne.createTeam()
        playerTwo.createTeam()
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
    }
    
    // fonction qui annonce le vainqueur
    static func displayWinner() {
        
        playerOne.recap()
        playerTwo.recap()
        print("La partie est finie en \(numberRound) round !")
        if playerOne.characters[0].lifePoint <= 0 && playerOne.characters[1].lifePoint <= 0 && playerOne.characters[2].lifePoint <= 0  {
            print("\(playerTwo.name) est le meilleur combattant")
        } else if playerTwo.characters[0].lifePoint <= 0 && playerTwo.characters[1].lifePoint <= 0 && playerTwo.characters[2].lifePoint <= 0  {
            print("\(playerOne.name) est le meilleur combattant !!! ")
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

