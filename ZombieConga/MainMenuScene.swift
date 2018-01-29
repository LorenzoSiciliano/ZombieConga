/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    let background = SKSpriteNode(imageNamed: "MainMenu")
    let buttonPlay = SKSpriteNode(imageNamed: "buttonPlay")
  
    override func didMove(to view: SKView) {
    background.position = CGPoint(x: size.width/2, y: size.height/2)
    buttonPlay.position = CGPoint(x: size.width/2, y: size.height/2 - CGFloat(200))
    buttonPlay.name = "buttonPlay"
    addChild(background)
    addChild(buttonPlay)
    
  }
  
  func sceneTapped() {
    let myScene = GameScene(size: size)
    myScene.scaleMode = scaleMode
    let reveal = SKTransition.doorway(withDuration: 1.5)
    view?.presentScene(myScene, transition: reveal)
  }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    let touch = touches.first as UITouch!
    let touchLocation = touch!.location(in: self)
    let targetNode = atPoint(touchLocation) as! SKSpriteNode
    if let name = targetNode.name {
        if name == "buttonPlay" {
            sceneTapped()
        }
    }
    
  }

}
