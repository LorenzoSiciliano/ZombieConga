//
//  EnemyEntity.swift
//  ZombieConga
//
//  Created by Giulia Lunardini on 06/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class EnemyEntity : GKEntity
{
    
    init( initTarget: TargetComponent) {
        super.init()
        let texture = SKTexture(imageNamed: "enemy")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        addComponent(SeekComponent(maxSpeed: 450, maxAcceleration: 3, radius: Float(texture.size().width * 0.3), initTarget:initTarget))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
