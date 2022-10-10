//
//  Game.swift
//  Gambling Simulator
//
//  Created by Theodore Lawson on 10/9/22.
//

import Foundation

class Game{
    
    var name: String
    var chance: Double
    var startAmount: Double
    var cost: Double
    var reward: Double
    
    init(name: String, chance: String, startAmount: String, cost: String, reward: String) {
        self.name = name
        
        //ensure chance of victory is a valid percent
        if let doubleChance = Double(chance) {
            self.chance = doubleChance
        } else {
            self.chance = 0.0
        }
        
        //ensure start amount is a valid dollar amount
        if let doubleStartAmount = Double(startAmount) {
            self.startAmount = doubleStartAmount
        } else {
            self.startAmount = 0.0
        }
        
        //ensure cost of each play is a valid double amount
        if let doubleCost = Double(cost) {
            self.cost = doubleCost
        } else {
            self.cost = 0.0
        }
        
        //Ensure reward price is a valid dollar amount
        if let doubleReward = Double(reward) {
            self.reward = doubleReward
        } else {
            self.reward = 0.0
        }
    }
    
    func print() -> String {
        var s: String!
        
        s = self.name + "\n"
        s += String(self.chance) + "\n"
        s += String(self.startAmount) + "\n"
        s += String(self.cost) + "\n"
        s += String(self.reward) + "\n"

        return s
    }
}
