//
//  ZombieEntity.swift
//  ZombieConga
//
//  Created by Giulia Lunardini on 06/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class ZombieEntity : GKEntity
{
    override init() {
        super.init()
        let texture = SKTexture(imageNamed: "zombie1")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        let targetComponent = TargetComponent(targetPosition : spriteComponent.node.position)
        addComponent(targetComponent)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
