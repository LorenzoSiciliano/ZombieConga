//
//  TargetComponent.swift
//  ZombieConga
//
//  Created by Giulia Lunardini on 06/01/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import SpriteKit
import GameplayKit
class TargetComponent : GKAgent2D, GKAgentDelegate
{
    init(targetPosition:CGPoint)
    {
        super.init()
        
        delegate = self
        position = float2(targetPosition)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func agentWillUpdate(_ agent: GKAgent) {
     guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
     return
     }
     
     position = float2(spriteComponent.node.position)
     }
     
     func agentDidUpdate(_ agent: GKAgent) {
     guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
     return
     }
     
     spriteComponent.node.position = CGPoint(position)
     }
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        //behavior=TargetBehavior()
    }
     
    
    
}

