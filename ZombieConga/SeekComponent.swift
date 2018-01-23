//
//  MoveComponent.swift
//  PathfindingExperiment
//
//  Created by Giulia Lunardini on 01/01/18.
//  Copyright © 2018 Giulia Lunardini. All rights reserved.
//

import SpriteKit
import GameplayKit

class SeekComponent: GKAgent2D, GKAgentDelegate {
    var target : TargetComponent
    let zeroTarget :TargetComponent
    
    
    init(maxSpeed: Float, maxAcceleration: Float, radius: Float,  initTarget: TargetComponent) {
       
        self.target = initTarget
        self.zeroTarget = TargetComponent(targetPosition: CGPoint(x:0,y:0))
        super.init()
        delegate = self
        self.maxSpeed = maxSpeed
        self.maxAcceleration = maxAcceleration
        self.radius = radius
        print(self.mass)
        self.mass = 0.01
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
        if(position.x<target.position.x)
        {
            target=zeroTarget
        }
        
        behavior = SeekBehavior(targetSpeed: maxSpeed, seek: target)
    }
}
