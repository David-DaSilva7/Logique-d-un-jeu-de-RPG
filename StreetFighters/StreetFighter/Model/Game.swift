//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Creer la classe game

class Game {
    
    var chanceChest: Bool
    
    
    
    
// joueur 1
    var playerOne: Player
    
//joueur 2
    var playerTwo: Player

    init(playerOne(name: "Joueur 1"), playerTwo(name: "Joueur 2") {
    self.playerOne = playerOne
    self.playerTwo = playerTwo
}

func StartGame() {
    
    print("Street Fighter spécial Dragon Ball  !!!")
    print("Preparez-vous à combattre, choisissez 3 combattants sur ces 6 candidats de Drangon Ball")
    print("Les personnages :"
            + "\n1. Sangoku (100 Life, 20 Dégats)"
            + "\n2. Sangohan (90 Life, 25 Dégats)"
            + "\n3. Freezer (80 Life, 30 Dégats)"
            + "\n4. Krillin (85 Life, 27 Dégats)"
            + "\n5. Vegeta (100 Life, 20 Dégats)"
            + "\n6. Trunks (95 Life, 23 Dégats)")
    print("Le combat commence, lorsqu'un personnage n'a plus de point de vie, celui-ci est remplacé par un personnage qui a encore de la vie")
    print("Si un coffre apparait, vous pouez prendre l'arme du coffre")
    print("Si l'intégralité de ton équipe n'a plus de point de vie, la partie est perdu")

}

func createTeam(){
    
    print("\(playerOne) choisis ton équipe")
    playerOne.chooseCharacter()
    
    print("\(playerTwo) choisis ton équipe")
    playerTwo.chooseCharacter()
    
    
func startBattle() {
     print("Combatez!!!!")
    
    
    while allCharacters.lifePoint > 0  {
        
        if chanceChest == true {
            newWeapon()

        }
        
        if Character.lifePoint == 0 {
            changeCharacter()
            
        } 
}
func displayWinner(){
    
    if playerOne.allCharacters == 0 {
    print("Team \(playerTwo) est le meilleur combattant")

    } else if playerTwo.allCharacters == 0 {
        print("Team \(playerOne) est le meilleur combattant")

    }


}
