//
//  HeartDropEntity.swift
//  ZombieConga
//
//  Created by Michele Brescia on 23/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class HeartDropEntity : GKEntity
{
    override init() {
        super.init()
        let texture = SKTexture(imageNamed: "red-heart-drop")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        let targetComponent = TargetComponent(targetPosition : spriteComponent.node.position)
        addComponent(targetComponent)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

