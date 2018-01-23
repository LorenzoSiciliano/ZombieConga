//
//  SpriteComponent.swift
//  ZombieConga
//
//  Created by Giulia Lunardini on 06/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//
import SpriteKit
import GameplayKit
import Foundation
class SpriteComponent : GKComponent {
    
    let node: SKSpriteNode
    
    init(texture: SKTexture) {
        node = SKSpriteNode(texture: texture, color: .white, size: texture.size())
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
