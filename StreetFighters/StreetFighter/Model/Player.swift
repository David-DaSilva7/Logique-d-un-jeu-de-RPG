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
    
    
    init(name: String, characters: [Character]){
        self.name = name
        self.characters = characters
    }
    
    
    func attackTeam1() {
        
        print(""
                + "\n1. Rentrer 1 pour choisir votre 1er combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name) "
                + "\n2. Rentrer 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)  "
                + "\n3. Rentrer 3 pour choisir votre 3ème combattant: \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)  \n"
        )
        
        if let readline = readLine() {
            if let choice = Int(readline){
                switch choice {
                
                case 1:
                    print("Tu as choisis \(characters[0].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerTwo.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerTwo.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerTwo.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerTwo.characters[0].name)")
                                            playerTwo.characters[0].lifePoint = playerTwo.characters[0].lifePoint - characters[0].weapon.damage
                                            print("\(playerTwo.characters[0].name) à \(playerTwo.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerTwo.characters[1].name)")
                                            playerTwo.characters[1].lifePoint = playerTwo.characters[1].lifePoint - characters[0].weapon.damage
                                            print("\(playerTwo.characters[1].name) à \(playerTwo.characters[1].lifePoint) points de vie")
                                            
                                        case 3:
                                            print("Tu attaques \(playerTwo.characters[2].name)")
                                            playerTwo.characters[2].lifePoint = playerTwo.characters[2].lifePoint - characters[0].weapon.damage
                                            print("\(playerTwo.characters[2].name) à \(playerTwo.characters[2].lifePoint) points de vie")
                                            
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[0].healCharacter()
                                print("\(characters[0].name) gagne 15 points de vie ")
                                print("\(characters[0].name) a \(characters[0].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                case 2:
                    print("Tu as choisis \(characters[1].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerTwo.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerTwo.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerTwo.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerTwo.characters[0].name)")
                                            playerTwo.characters[0].lifePoint = playerTwo.characters[0].lifePoint - characters[1].weapon.damage
                                            print("\(playerTwo.characters[0].name) à \(playerTwo.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerTwo.characters[1].name)")
                                            playerTwo.characters[1].lifePoint = playerTwo.characters[1].lifePoint - characters[1].weapon.damage
                                            print("\(playerTwo.characters[1].name) à \(playerTwo.characters[1].lifePoint) points de vie")
                                        case 3:
                                            print("Tu attaques \(playerTwo.characters[2].name)")
                                            playerTwo.characters[2].lifePoint = playerTwo.characters[2].lifePoint - characters[1].weapon.damage
                                            print("\(playerTwo.characters[2].name) à \(playerTwo.characters[2].lifePoint) points de vie")
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[1].healCharacter()
                                print("\(characters[1].name) gagne 15 points de vie ")
                                print("\(characters[1].name) a \(characters[1].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                case 3:
                    print("Tu as chosisis \(characters[2].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerTwo.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerTwo.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerTwo.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerTwo.characters[0].name)")
                                            playerTwo.characters[0].lifePoint = playerTwo.characters[0].lifePoint - characters[2].weapon.damage
                                            print("\(playerTwo.characters[0].name) à \(playerTwo.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerTwo.characters[1].name)")
                                            playerTwo.characters[1].lifePoint = playerTwo.characters[1].lifePoint - characters[2].weapon.damage
                                            print("\(playerTwo.characters[1].name) à \(playerTwo.characters[1].lifePoint) points de vie")
                                        case 3:
                                            print("Tu attaques \(playerTwo.characters[2].name)")
                                            playerTwo.characters[2].lifePoint = playerTwo.characters[2].lifePoint - characters[2].weapon.damage
                                            print("\(playerTwo.characters[2].name) à \(playerTwo.characters[2].lifePoint) points de vie")
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[2].healCharacter()
                                print("\(characters[2].name) gagne 15 points de vie ")
                                print("\(characters[2].name) a \(characters[2].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                default:
                    print("Erreur")
                }
            }
        }
        recapTeam1()
    }
    
    
    func attackTeam2() {
        
        print(""
                + "\n1. Rentrer 1 pour choisir votre 1er combattant : \(characters[0].name) à \(characters[0].lifePoint) PV et inflige \(characters[0].weapon.damage) dégats avec \(characters[0].weapon.name) "
                + "\n2. Rentrer 2 pour choisir votre 2ème combattant : \(characters[1].name) à \(characters[1].lifePoint) PV et inflige \(characters[1].weapon.damage) dégats avec \(characters[1].weapon.name)  "
                + "\n3. Rentrer 3 pour choisir votre 3ème combattant: \(characters[2].name) à \(characters[2].lifePoint) PV et inflige \(characters[2].weapon.damage) dégats avec \(characters[2].weapon.name)  \n"
        )
        
        if let readline = readLine() {
            if let choice = Int(readline){
                switch choice {
                
                case 1:
                    print("Tu as choisis \(characters[0].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerOne.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerOne.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerOne.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerOne.characters[0].name)")
                                            playerOne.characters[0].lifePoint = playerOne.characters[0].lifePoint - characters[0].weapon.damage
                                            print("\(playerOne.characters[0].name) à \(playerOne.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerOne.characters[1].name)")
                                            playerTwo.characters[1].lifePoint = playerOne.characters[1].lifePoint - characters[0].weapon.damage
                                            print("\(playerOne.characters[1].name) à \(playerOne.characters[1].lifePoint) points de vie")
                                            
                                        case 3:
                                            print("Tu attaques \(playerOne.characters[2].name)")
                                            playerOne.characters[2].lifePoint = playerOne.characters[2].lifePoint - characters[0].weapon.damage
                                            print("\(playerOne.characters[2].name) à \(playerOne.characters[2].lifePoint) points de vie")
                                            
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[0].healCharacter()
                                print("\(characters[0].name) gagne 15 points de vie ")
                                print("\(characters[0].name) a \(characters[0].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                case 2:
                    print("Tu as choisis \(characters[1].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerOne.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerOne.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerOne.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerOne.characters[0].name)")
                                            playerOne.characters[0].lifePoint = playerOne.characters[0].lifePoint - characters[1].weapon.damage
                                            print("\(playerOne.characters[0].name) à \(playerOne.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerOne.characters[1].name)")
                                            playerOne.characters[1].lifePoint = playerOne.characters[1].lifePoint - characters[1].weapon.damage
                                            print("\(playerOne.characters[1].name) à \(playerOne.characters[1].lifePoint) points de vie")
                                        case 3:
                                            print("Tu attaques \(playerOne.characters[2].name)")
                                            playerOne.characters[2].lifePoint = playerOne.characters[2].lifePoint - characters[1].weapon.damage
                                            print("\(playerOne.characters[2].name) à \(playerOne.characters[2].lifePoint) points de vie")
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[1].healCharacter()
                                print("\(characters[1].name) gagne 15 points de vie ")
                                print("\(characters[1].name) a \(characters[1].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                case 3:
                    print("Tu as chosisis \(characters[2].name)")
                    print(""
                            + "\n1. Rentrer 1 pour attaquer un adversaire"
                            + "\n2. Rentrer 2 pour soigner ton personnage de 15 points de vie"
                    )
                    
                    if let readline = readLine() {
                        if let choiceAttack = Int(readline){
                            switch choiceAttack {
                            
                            case 1:
                                print("J'attaque un personnage adversaire")
                                print(""
                                        + "\n1. Rentrer 1 pour combattre : \(playerOne.characters[0].name)"
                                        + "\n2. Rentrer 2 pour combattre : \(playerOne.characters[1].name)"
                                        + "\n3. Rentrer 3 pour combattre : \(playerOne.characters[2].name) \n"
                                )
                                
                                if let readline = readLine() {
                                    if let choiceOpponent = Int(readline){
                                        switch choiceOpponent {
                                        
                                        case 1:
                                            print("Tu attaques \(playerOne.characters[0].name)")
                                            playerOne.characters[0].lifePoint = playerOne.characters[0].lifePoint - characters[2].weapon.damage
                                            print("\(playerOne.characters[0].name) à \(playerOne.characters[0].lifePoint) points de vie")
                                            
                                        case 2:
                                            print("Tu attaques \(playerOne.characters[1].name)")
                                            playerOne.characters[1].lifePoint = playerOne.characters[1].lifePoint - characters[2].weapon.damage
                                            print("\(playerOne.characters[1].name) à \(playerOne.characters[1].lifePoint) points de vie")
                                        case 3:
                                            print("Tu attaques \(playerOne.characters[2].name)")
                                            playerOne.characters[2].lifePoint = playerOne.characters[2].lifePoint - characters[2].weapon.damage
                                            print("\(playerOne.characters[2].name) à \(playerOne.characters[2].lifePoint) points de vie")
                                        default:
                                            print("Erreur")
                                        }
                                    }
                                }
                                
                            case 2:
                                print("Je soigne mon combattants")
                                characters[2].healCharacter()
                                print("\(characters[2].name) gagne 15 points de vie ")
                                print("\(characters[2].name) a \(characters[2].lifePoint) points de vie")
                                
                            default:
                                print("Erreur")
                            }
                            
                        }
                    }
                    
                    if characters[0].lifePoint <= 0 {
                        characters.remove(at: 0)

                    } else if characters[1].lifePoint <= 0 {
                        characters.remove(at: 1)

                    } else if characters[2].lifePoint <= 0 {
                        characters.remove(at: 2)

                    }
                    
                default:
                    print("Erreur")
                }
            }
        }
        recapTeam2()
    }



func recapTeam1() {
    print("Récapitulation de l'équipe du joueur 1")
   print(" \(playerOne.characters[0].name) à \(playerOne.characters[0].lifePoint) PV et inflige \(playerOne.characters[0].weapon.damage) dégats avec \(playerOne.characters[0].weapon.name)")
   print(" \(playerOne.characters[1].name) à \(playerOne.characters[1].lifePoint) PV et inflige \(playerOne.characters[1].weapon.damage) dégats avec \(playerOne.characters[1].weapon.name)")
    print(" \(playerOne.characters[2].name) à \(playerOne.characters[2].lifePoint) PV et inflige \(playerOne.characters[2].weapon.damage) dégats avec \(playerOne.characters[2].weapon.name)")

}
    
    func recapTeam2() {
        print("Récapitulation de l'équipe du joueur 2")
        print(" \(playerTwo.characters[0].name) à \(playerTwo.characters[0].lifePoint) PV et inflige \(playerTwo.characters[0].weapon.damage) dégats avec \(playerTwo.characters[0].weapon.name)")
        print(" \(playerTwo.characters[1].name) à \(playerTwo.characters[1].lifePoint) PV et inflige \(playerTwo.characters[1].weapon.damage) dégats avec \(playerTwo.characters[1].weapon.name)")
        print(" \(playerTwo.characters[2].name) à \(playerTwo.characters[2].lifePoint) PV et inflige \(playerTwo.characters[2].weapon.damage) dégats avec \(playerTwo.characters[2].weapon.name)")
    }
    
    
}
