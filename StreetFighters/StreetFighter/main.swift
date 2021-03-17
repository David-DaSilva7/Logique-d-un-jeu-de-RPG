//
//  main.swift
//  @
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation

// Tableau de point de vie
var lifePoints = [100, 95, 90, 30, 30, 30]

// Tableau des armes avec les dégats occasionnés
var weapons = [Weapon(damage: 20, name: "Épée 🗡"),
               Weapon(damage: 25, name: "Pistolet 🔫"),
               Weapon(damage: 30, name: "Chaine ⛓"),
               Weapon(damage: 20, name: "Scie 🪚"),
               Weapon(damage: 20, name: "Marteau 🔨"),
               Weapon(damage: 35, name: "Tournevis 🪛")]

// Variable des 2 joueurs 
var playerOne = Player(name: "Joueur 1", characters: [])
var playerTwo = Player(name: "Joueur 2", characters: [])



Game.StartGame()








