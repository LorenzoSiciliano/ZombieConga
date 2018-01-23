//
//  SeekBehavior.swift
//  ZombieConga
//
//  Created by Giulia Lunardini on 06/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import GameplayKit
import SpriteKit

class SeekBehavior: GKBehavior {
    
    init(targetSpeed: Float, seek: GKAgent) {
        super.init()
        
        if targetSpeed > 0 {
            setWeight(0.5, for: GKGoal(toReachTargetSpeed: targetSpeed))
            setWeight(0.5, for: GKGoal(toSeekAgent: seek))
        }
    }
}

