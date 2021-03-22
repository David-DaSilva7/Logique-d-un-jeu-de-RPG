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
    var characters: [Character] = []
    
    //Initialiser les variables
    init(name: String, characters: [Character]){
        self.name = name
        self.characters = characters
    }
    
    //Fonction pour choisir le personnage qui va attaquer ou recevoir un soin
    func chooseYourFighter() {
        
        if characters[0].lifePoint > 0 {
            print("Rentrer 1 pour choisir votre 1er combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name)")
        }
        if characters[1].lifePoint > 0 {
            print("Rentrer 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)")
        }
        if characters[2].lifePoint > 0 {
            print("Rentrer 3 pour choisir votre 3ème combattant : \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)")
        }
    }
    
    // Fonction pour attaquer la team adverse ou soigner un allié
    func attackTeam() {
        
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        
        if characters[0].lifePoint > 0 || characters[1].lifePoint > 0 || characters[2].lifePoint > 0 {
            
            print(" \(name) choisit un personnage de votre équipe, puis un personnage ennemi à attaquer, ou allié à soigner dans le cas d'un soin ")
            print("")
            
            chooseYourFighter()
            
            // Choix du personnage qui attaque ou qui se soigne
            if let readline = readLine() {
                if let choice = Int(readline) {
                    
                    attackOrHeal(choice: choice)
                    
                    Game.switchPlayer()
                }
            }
        }
    }
    
    func createTeam() {
        
        for i in 0...2 {
            if i == 0 {
                print("\(name) choisissez le nom de votre 1er combattant")
            } else if i == 1 {
                print("\(name) choisissez le nom de votre 2ème combattant")
            } else {
                print("\(name) choisissez le nom de votre 3ème combattant")
            }
            if let named = readLine() {
                print("Votre combattant se nomme \(named)")
                print("")
                if self.name == "Joueur 1" {
                    characters.append(Character(name: "\(named)", lifePoint: lifePointsPlayerOne[i], weapon: weaponsPlayerOne[i]))
                } else {
                    characters.append(Character(name: "\(named)", lifePoint: lifePointsPlayerTwo[i], weapon: weaponsPlayerTwo[i]))
                }
            }
        }
        print("Votre équipe est constituée de :")
        print(""
                + "\n1. \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec une \(characters[0].weapon.name) "
                + "\n2. \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec un \(characters[1].weapon.name)"
                + "\n3. \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec une \(characters[2].weapon.name) \n"
        )
    }
    
    
    
    func checkTeamHealt() {
        
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        // TO DO : elle verifie si il ya au moin un personnage dans l'equipe de vivant, so ce n'est pas le cas alors appeller la fonction displaywinner. Appeller la fonction checkTeamHealt après chaque attaque
        // Faire une boucle sur le tableau de personnage d'un joueur pour verifier qu'au moins un personnage à plus de 0 PV
        if playerToAttack.characters[0].lifePoint <= 0 && playerToAttack.characters[1].lifePoint <= 0 && playerToAttack.characters[2].lifePoint <= 0 { // les 3 joueur on 0 point de vie ou moins
            print("La partie est terminée, appuyer sur entrer pour afficher le vainqueur")
            if readLine() != nil {
                Game.displayWinner()
            }
        }
    }
    
    func recap() {
        
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        
        print("Récapitulation de l'équipe du \(name) :")
        print("\(characters[0].name): \(characters[0].lifePoint)PV, \(characters[0].weapon.damage) dégats avec une \(characters[0].weapon.name)")
        print("\(characters[1].name): \(characters[0].lifePoint)PV, \(characters[1].weapon.damage) dégats avec un \(characters[1].weapon.name)")
        print("\(characters[2].name): \(characters[2].lifePoint)PV, \(characters[2].weapon.damage) dégats avec une \(characters[2].weapon.name)")
        print("")
    }
    
    func attackOrHeal(choice:Int) {
        
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        
        print("Tu as choisis \(characters[choice-1].name)")
        print(""
                + "\n1. Rentrer 1 pour attaquer un adversaire"
                + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vies"
        )
        
        //  Choisir de attaquer ou soigner
        if let readline = readLine() {
            if let choiceAttack = Int(readline){
                switch choiceAttack {
                
                case 1:
                    
                    print("J'attaque un personnage adverse")
                    print("")
                    if playerToAttack.characters[0].lifePoint > 0 {
                        print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name): \(playerToAttack.characters[0].lifePoint)PV")
                    }
                    if playerToAttack.characters[1].lifePoint > 0 {
                        print("Rentrer 2 pour combattre : \(playerToAttack.characters[1].name): \(playerToAttack.characters[1].lifePoint)PV")
                    }
                    if playerToAttack.characters[2].lifePoint > 0 {
                        print("Rentrer 3 pour combattre : \(playerToAttack.characters[2].name): \(playerToAttack.characters[2].lifePoint)PV")
                    }
                    
                    // Choisir le personnage adverse à attaquer
                    if let readline = readLine() {
                        if let choiceOpponent = Int(readline){
                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                            print("")
                            checkTeamHealt()
                        }
                    }
                    
                case 2:
                    print("Je soigne mon combattant")
                    characters[choice-1].healCharacter()
                    print("\(characters[choice-1].name) gagne 15 points de vies ")
                    print("\(characters[choice-1].name) a \(characters[choice-1].lifePoint) points de vies")
                    
                default:
                    print("Erreur")
                }
            }
        }
    }
    
    
}
