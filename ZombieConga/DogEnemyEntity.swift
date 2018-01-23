//
//  DogEnemyEntity.swift
//  ZombieConga
//
//  Created by Michele Brescia on 23/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class DogEnemyEntity : GKEntity
{
    
    init( initTarget: TargetComponent) {
        super.init()
        let texture = SKTexture(imageNamed: "dog1")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        addComponent(SeekComponent(maxSpeed: 650, maxAcceleration: 5, radius: Float(texture.size().width * 0.3), initTarget:initTarget))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

