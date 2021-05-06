//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 10/03/2021.
//

import Foundation

class Game {
    static var numberRound = 0
    static var playerTurn = PlayerTurn()
    // Change player between turns
    static func switchPlayer() {
        switch Game.playerTurn {
        case .playerOne:
            Game.playerTurn = .playerTwo
        case .playerTwo:
            Game.playerTurn = .playerOne
        }
    }
    
    // Function to introduce the part
    static func startGame() {
        print("Street Fighter!!! \nStreet Fighter est un jeu qui oppose 2 équipes composées de 3 personnages dans un combat sanglant \nLe combat commence, au tour par tour, le joueur 1 choisit le personnage de son équipe qui va combattre, si la partie n'est pas terminée, c'est au tour du joueur 2 \nSi un coffre apparaît, vous pouvez prendre l'arme du coffre \nSi l'intégralité de votre équipe n'a plus de point de vie, la partie est terminée \nAppuyez sur entrer pour commencer la partie")
        if readLine() != nil {
            Game.createTeams()
        } 
    }
    
    // Function for the 2 players to create their team
    fileprivate static func createTeams() {
        playerOne.createTeam()
        playerTwo.createTeam()
        print("Appuyez sur entrer pour commencer le combat" )
        if readLine() != nil {
            Game.startBattle()
        }
    }
    
    // Start the fight function
    fileprivate static func startBattle() {
        print("Combattez !!!")
        while (playerOne.characters[0].lifePoint > 0 || playerOne.characters[1].lifePoint > 0 || playerOne.characters[2].lifePoint > 0) || (playerTwo.characters[0].lifePoint > 0 || playerTwo.characters[1].lifePoint > 0 || playerTwo.characters[2].lifePoint > 0) {
            if playerTurn == .playerOne {
                playerOne.attackTeam()
            } else {
                playerTwo.attackTeam()
            }
        }
    }
    
    // Function that announces the winner
    static func displayWinner() {
        playerOne.recapTeam()
        playerTwo.recapTeam()
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
