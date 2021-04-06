//
//  main.swift
//  @
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Life point table
var lifePointsPlayerOne = [30,40,35]
var lifePointsPlayerTwo = [25,30,30]
// Weapons table with the damage caused
var weaponsPlayerOne = [Weapon(damage: 20, name: "une Épée 🗡"),
                        Weapon(damage: 25, name: "un Pistolet 🔫"),
                        Weapon(damage: 30, name: "une Chaine ⛓")]
var weaponsPlayerTwo =  [Weapon(damage: 20, name: "une Scie 🪚"),
                         Weapon(damage: 20, name: "un Marteau 🔨"),
                         Weapon(damage: 35, name: "un Tournevis 🪛")]
// Variables of the 2 players
var playerOne = Player(name: "Joueur 1", characters: [])
var playerTwo = Player(name: "Joueur 2", characters: [])
// Variable for the chest
let roundsForPlayerOne = [1, 3, 5]
let roundsForPlayerTwo = [2, 4, 6]
let randomRoundChestForPlayerOne = roundsForPlayerOne.randomElement()
let randomRoundChestForPlayerTwo = roundsForPlayerTwo.randomElement()
let chest = Chest()
Game.startGame()
