//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Creer la classe game
class Game {
    
    // fonction pour introduire la partie
    func StartGame() {
        
        print("Street Fighter!!!")
        print("Le combat commence, au tour par tour, le joueur 1 choisit le personnage de son équipe qui va combattre, si la partie n'est pas terminée, c'est au tour du joueur 2")
        print("Si un coffre apparait, vous pouvez prendre l'arme du coffre")
        print("Si l'intégralité de votre équipe n'a plus de point de vie, la partie est terminée")
        print("Appuyez sur une touche pour commencer la partie")
        _ = readLine()
    }
    
    // fonction commencer la partie
    func startBattle() {
        print("Combatez!!!!")
        
        while playerOne.charactersOne.count != 0 || playerTwo.charactersTwo.count != 0  {
            print(" \(playerOne.name) choisit son personnage et le personnage ennemi à attaquer")
            
        }
    }
    // fonction qui annonce le vainqueur
    func displayWinner(){
        
        if playerOne.charactersOne.count == 0 {
            print("Team \(playerTwo) est le meilleur combattant")
            
        } else if playerTwo.charactersTwo.count == 0 {
            print("Team \(playerOne) est le meilleur combattant")
        }
    }
}



