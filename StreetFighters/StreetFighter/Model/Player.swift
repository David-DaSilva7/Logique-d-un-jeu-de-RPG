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
        if characters.count < 1 {
            print("Ton combattant est mort")
        } else if characters[0].lifePoint > 0 {
            print("Rentrer 1 pour choisir votre 2ème combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name)")
        }
        
        if characters.count < 2 {
            print("Ton combattant est mort")
        } else if characters[1].lifePoint > 0 {
            print("Rentrer 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)")
        }
        
        if characters.count < 3 {
            print("Ton combattant est mort")
        } else if characters[2].lifePoint > 0 {
            print("Rentrer 3 pour choisir votre 2ème combattant : \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)")
        }
    }
 
    
    
    // Fonction pour attaquer la team adverse ou soigner un allié
    func attackTeam() {
        let playerToAttack = Game.playerTurn == .playerOne ? playerTwo : playerOne
        
        print(" \(name) choisit un personnage de votre équipe, puis un personnage ennemi à attaquer, ou allié à soigner dans le cas d'un soin ")
        
        chooseYourFighter()
        
        // Choix du personnage qui attaque ou qui se soigne
        if let readline = readLine() {
            if let choice = Int(readline){
                switch choice {
                
                case 1:
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
                                
                                if playerToAttack.characters[0].lifePoint > 0 {
                                    print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name): \(playerToAttack.characters[0].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                if playerToAttack.characters[1].lifePoint > 0 {
                                    print("Rentrer 2 pour combattre : \(playerToAttack.characters[1].name): \(playerToAttack.characters[1].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                if playerToAttack.characters[2].lifePoint > 0 {
                                    print("Rentrer 3 pour combattre : \(playerToAttack.characters[2].name): \(playerToAttack.characters[2].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                
                                // Choisir le personnage adverse à attaquer
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                            
                                        case 2:
                                            print("Tu attaques \(playerTwo.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                            
                                        case 3:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                            
                                        default:
                                            print("Erreur")
                                        }
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
                    
                case 2:
                    print("Tu as choisis \(characters[1].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vies"
                    )
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                
                                print("J'attaque un personnage adverse")
                                
                                if playerToAttack.characters[0].lifePoint > 0 {
                                    print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name): \(playerToAttack.characters[0].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                if playerToAttack.characters[1].lifePoint > 0 {
                                    print("Rentrer 2 pour combattre : \(playerToAttack.characters[1].name): \(playerToAttack.characters[1].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                if playerToAttack.characters[2].lifePoint > 0 {
                                    print("Rentrer 3 pour combattre : \(playerToAttack.characters[2].name): \(playerToAttack.characters[2].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: choice-1)
                                }
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                            
                                        case 2:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                        case 3:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                        default:
                                            print("Erreur")
                                        }
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
                case 3:
                    print("Tu as chosisis \(characters[2].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vies"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                
                                print("J'attaque un personnage adverse")
                                if playerToAttack.characters[0].lifePoint > 0 {
                                    print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name): \(playerToAttack.characters[0].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: 0)
                                }
                                if playerToAttack.characters[1].lifePoint > 0 {
                                    print("Rentrer 2 pour combattre : \(playerToAttack.characters[1].name): \(playerToAttack.characters[1].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: 1)
                                }
                                if playerToAttack.characters[2].lifePoint > 0 {
                                    print("Rentrer 3 pour combattre : \(playerToAttack.characters[2].name): \(playerToAttack.characters[2].lifePoint)PV")
                                } else {
                                    playerToAttack.characters.remove(at: 2)
                                }
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                        case 2:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                        case 3:
                                            print("Tu attaques \(playerToAttack.characters[choiceOpponent-1].name)")
                                            playerToAttack.characters[choiceOpponent-1].lifePoint = playerToAttack.characters[choiceOpponent-1].lifePoint - characters[choice-1].weapon.damage
                                            print("\(playerToAttack.characters[choiceOpponent-1].name) à \(playerToAttack.characters[choiceOpponent-1].lifePoint) points de vies")
                                        default:
                                            print("Erreur")
                                        }
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
                default:
                    print("Erreur")
                }
            }
        }
        Game.switchPlayer()
    }
}



//else {
//    print("Ton 3ème comnbattant est mort")
//}

//if playerToAttack.characters[choice-1].lifePoint <= 0 {
//    playerToAttack.characters.remove(at: choice-1)
//}


//if characters[0].lifePoint > 0 {
//    print("Rentrer 1 pour choisir votre 1er combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name)")
//}
//if characters[1].lifePoint > 0 {
//    print("Rentrer 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)")
//}
//if characters[2].lifePoint > 0 {
//    print("Rentrer 3 pour choisir votre 3ème combattant: \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name) ")
//}






//    func chooseYourFighter() {
//        if characters.count < 1 {
//            print("Ton combattant est mort")
//        } else if characters[0].lifePoint > 0 {
//            print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name)")
//        }
//
//        if characters.count < 1 {
//            print("Ton combattant est mort")
//        } else if characters[1].lifePoint > 0 {
//            print("Rentrer 2 pour combattre : \(playerToAttack.characters[0].name)")
//        }
//
//        if characters.count < 1 {
//            print("Ton combattant est mort")
//        } else if characters[2].lifePoint > 0 {
//            print("Rentrer 2 pour combattre : \(playerToAttack.characters[0].name)")
//        }
//    }

//        func chooseYourOpponent() {
//            print("J'attaque un personnage adverse")
//            if playerToAttack.characters[0].lifePoint > 0 {
//                print("Rentrer 1 pour combattre : \(playerToAttack.characters[0].name)")
//            } else {
//                print("Son 1er combattant est mort")
//            }
//            if playerToAttack.characters[1].lifePoint > 0 {
//                print("Rentrer 2 pour combattre : \(playerToAttack.characters[1].name)")
//            } else {
//                print("Son 2ème combattant est mort")
//            }
//            if  playerToAttack.characters[2].lifePoint > 0 {
//                print("Rentrer 3 pour combattre : \(playerToAttack.characters[2].name)")
//            } else {
//                print("Son 3ème combattant est mort")
//            }
//        }
