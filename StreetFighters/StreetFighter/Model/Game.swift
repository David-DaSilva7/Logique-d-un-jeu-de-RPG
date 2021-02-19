//
//  Game.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


// Creer la classe game

class Game {
    
// Chance d'obtenir un coffre
    var chanceChest = true
    
// joueur 1
    var playerOne: Player
    
//joueur 2
    var playerTwo: Player


// fonction pour introduire la partie
func StartGame() {
    
    print("Street Fighter!!!")
    print("Preparez-vous à combattre, choisissez 3 combattants sur ces 6 candidats")
    print("Les personnages :"
            + "\n1. Ryu (100 Life, 20 Dégats)"
            + "\n2. Ken (90 Life, 25 Dégats)"
            + "\n3. Ibuki (80 Life, 30 Dégats)"
            + "\n4. Gouken (85 Life, 27 Dégats)"
            + "\n5. Cody (100 Life, 20 Dégats)"
            + "\n6. Makoto (95 Life, 23 Dégats)")
    print("Le combat commence, lorsqu'un personnage n'a plus de point de vie, celui-ci est remplacé par un personnage qui a encore de la vie")
    print("Si un coffre apparait, vous pouez prendre l'arme du coffre")
    print("Si l'intégralité de ton équipe n'a plus de point de vie, la partie est perdu")

}

    
// fonction pour creer son équipe
func createTeam(){
    
    print("\(playerOne.named) choisis ton équipe")
    playerOne.chooseTeam()
    
    print("\(playerTwo.named) choisis ton équipe")
    playerTwo.chooseTeam()
    
}
    
// fonction commencer la partie
func startBattle() {
     print("Combatez!!!!")
    
    
    while playerOne.characters.lifePoint> 0  {
        
        if chanceChest == true {
            newWeapon()

        }
        
        if playerOne.characters.lifePoint == 0 {
            changeCharacter()
            
        } 
}
}
    
    
// fonction qui annonce le vainqueur
func displayWinner(){
    
    if playerOne.characters == 0 {
    print("Team \(playerTwo) est le meilleur combattant")

    } else if playerTwo.allCharacters == 0 {
        print("Team \(playerOne) est le meilleur combattant")

    }


}
}


