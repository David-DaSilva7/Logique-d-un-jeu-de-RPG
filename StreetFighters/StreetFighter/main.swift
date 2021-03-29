//
//  main.swift
//  @
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Tableau de point de vie
var lifePointsPlayerOne = [100, 95, 90]
var lifePointsPlayerTwo = [30,30,30]

// Tableau des armes avec les dégats occasionnés
var weaponsPlayerOne = [Weapon(damage: 20, name: "Épée 🗡"),
                        Weapon(damage: 25, name: "Pistolet 🔫"),
                        Weapon(damage: 30, name: "Chaine ⛓")]

var weaponsPlayerTwo =  [Weapon(damage: 20, name: "Scie 🪚"),
                         Weapon(damage: 20, name: "Marteau 🔨"),
                         Weapon(damage: 35, name: "Tournevis 🪛")]

// Variable des 2 joueurs 
var playerOne = Player(name: "Joueur 1", characters: [])
var playerTwo = Player(name: "Joueur 2", characters: [])

// Chest 
let roundsForPlayerOne = [1, 3, 5, 7, 9, 11]
let roundsForPlayerTwo = [2, 4, 6, 8, 10, 12]
let randomRoundChestForPlayerOne = roundsForPlayerOne.randomElement()
let randomRoundChestForPlayerTwo = roundsForPlayerTwo.randomElement()
let chest = Chest()

Game.StartGame()








