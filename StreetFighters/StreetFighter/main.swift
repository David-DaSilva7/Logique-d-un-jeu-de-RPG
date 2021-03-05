//
//  main.swift
//  @
//
//  Created by David Da Silva on 05/02/2021.
//

import Foundation


var lifePoints = [100, 95, 90, 80, 110, 95]
var weapons = [Weapon(damage: 20, name: "Épée 🗡"),
               Weapon(damage: 25, name: "Pistolet 🔫"),
               Weapon(damage: 30, name: "Chaine ⛓"),
               Weapon(damage: 20, name: "Scie 🪚"),
               Weapon(damage: 20, name: "Marteau 🔨"),
               Weapon(damage: 35, name: "Tournevis 🪛")]


var playerOne = Player(name: "Joueur 1", charactersOne: [], charactersTwo: [])
var playerTwo = Player(name: "Joueur 2", charactersOne: [], charactersTwo: [])


Game.StartGame()







