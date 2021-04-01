//
//  Player.swift
//  StreetFighter
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

class Player {
    // variable for player names
    var name: String
    // table of characters
    var characters: [Character] = []
    //Initialize
    init(name: String, characters: [Character]){
        self.name = name
        self.characters = characters
    }
    // function for the chests to appear
    func randomWeaponMayAppear(choice: Int) {
        if Game.numberRound == randomRoundChestForPlayerOne || Game.numberRound == randomRoundChestForPlayerTwo {
            print("🎁 Cadeau !!! Une arme secrète plus ou moins puissante que votre arme actuelle, voulez vous la prendre ? ")
            print(""
                    + "\n1. Oui"
                    + "\n2. Non")
            if let readline = readLine() {
                if let choiceChestDecision = Int(readline){
                    switch choiceChestDecision {
                    case 1:
                        print("\(characters[choice-1].name) a décidé d'échanger son arme, \(characters[choice-1].weapon.name) infligeant \(characters[choice-1].weapon.damage) de dégats, pour obtenir l'arme secrète")
                        let randomWeapon = chest.randomWeapon()
                        characters[choice-1].weapon = randomWeapon
                        print("L'arme secrète est \(characters[choice-1].weapon.name) infligeant \(characters[choice-1].weapon.damage) de dégats ")
                    case 2:
                        print("\(characters[choice-1].name) a décidé de garder son arme")
                    default:
                        print("Veuillez indiquer un nombre compris dans la liste proposée")
                    }
                }
            }
        }
    }
    // Function to choose the character who will attack or receive a heal
    func chooseYourFighter() {
        if characters[0].lifePoint > 0 {
            print("Rentrez 1 pour choisir votre 1er combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name)")
        }
        if characters[1].lifePoint > 0 {
            print("Rentrez 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)")
        }
        if characters[2].lifePoint > 0 {
            print("Rentrez 3 pour choisir votre 3ème combattant : \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)")
        }
    }
    // function to start the game
    func attackTeam() {
        Game.numberRound += 1
        if characters[0].lifePoint > 0 || characters[1].lifePoint > 0 || characters[2].lifePoint > 0 {
            print(" \(name) choisit un personnage de votre équipe, puis un personnage ennemi à attaquer, ou allié à soigner dans le cas d'un soin ")
            print("")
            chooseYourFighter()
            // Choice of character who attacks or heals
            if let readline = readLine() {
                if let choice = Int(readline) {
                    randomWeaponMayAppear(choice: choice)
                    attackOrHeal(choice: choice)
                }
            }
        }
    }
    // Team creation function
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
                + "\n1. \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name) "
                + "\n2. \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)"
                + "\n3. \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name) \n")
    }
    // Function that checks if the game is over
    func checkTeamHealt() {
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        if playerToAttack.characters[0].lifePoint <= 0 && playerToAttack.characters[1].lifePoint <= 0 && playerToAttack.characters[2].lifePoint <= 0 {
            print("La partie est terminée, appuyez sur entrer pour afficher le vainqueur")
            if readLine() != nil {
                Game.displayWinner()
            }
        }
    }
    // Team summary function
    func recap() {
        print("Récapitulation de l'équipe du \(name) :")
        print("\(characters[0].name): \(characters[0].lifePoint)PV, \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name)")
        print("\(characters[1].name): \(characters[0].lifePoint)PV, \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)")
        print("\(characters[2].name): \(characters[2].lifePoint)PV, \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)")
        print("")
    }
    // Function to attack an opponent or heal an ally
    func attackOrHeal(choice:Int) {
        if choice > 3 {
            print("Veuillez indiquer un nombre compris dans la liste proposée.")
        } else if characters[choice-1].lifePoint <= 0 {
            print("Veuillez indiquer un nombre compris dans la liste proposée.")
        }else{
            let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
            print("Tu as choisis \(characters[choice-1].name): \(characters[choice-1].lifePoint)PV, \(characters[choice-1].weapon.damage) dégats avec \(characters[choice-1].weapon.name)")
            print(""
                    + "\n1. Rentrez 1 pour attaquer un adversaire"
                    + "\n2. Rentrez 2 pour soigner ton personnage de 15 points de vies")
            //  Choose to attack or heal
            if let readline = readLine() {
                if let choiceAttack = Int(readline){
                    switch choiceAttack {
                    case 1:
                        print("J'attaque un personnage adverse")
                        print("")
                        if playerToAttack.characters[0].lifePoint > 0 {
                            print("Rentrez 1 pour combattre : \(playerToAttack.characters[0].name): \(playerToAttack.characters[0].lifePoint)PV")
                        }
                        if playerToAttack.characters[1].lifePoint > 0 {
                            print("Rentrez 2 pour combattre : \(playerToAttack.characters[1].name): \(playerToAttack.characters[1].lifePoint)PV")
                        }
                        if playerToAttack.characters[2].lifePoint > 0 {
                            print("Rentrez 3 pour combattre : \(playerToAttack.characters[2].name): \(playerToAttack.characters[2].lifePoint)PV")
                        }
                        // Choose the opposing character to attack
                        if let readline = readLine() {
                            if let choiceOpponent = Int(readline){
                                if choiceOpponent > 3 {
                                    print("Veuillez indiquer un nombre compris dans la liste proposée.")
                                } else if playerToAttack.characters[choiceOpponent-1].lifePoint <= 0 {
                                    print("Veuillez indiquer un nombre compris dans la liste proposée.")
                                } else {
                                    print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                    playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                    if playerToAttack.characters[choiceOpponent-1].lifePoint > 0 {
                                    print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                    } else {
                                        print("\(playerToAttack.characters[choiceOpponent-1].name) est à terre")
                                    }
                                    print("")
                                    checkTeamHealt()
                                    Game.switchPlayer()
                                }
                            }
                        }
                    case 2:
                        print("Je soigne mon combattant")
                        characters[choice-1].healCharacter()
                        print("\(characters[choice-1].name) gagne 15 points de vies ")
                        print("\(characters[choice-1].name) a \(characters[choice-1].lifePoint) points de vies")
                        Game.switchPlayer()
                    default:
                        print("Veuillez indiquer un nombre compris dans la liste proposée.")
                    }
                }
            }
        }
    }
}
