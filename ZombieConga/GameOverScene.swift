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

class GameOverScene: SKScene {
    let score:Int
    let scoreLabel = SKLabelNode(fontNamed: "Glimstick")
    
  init(size: CGSize, score: Int) {
    self.score = score
    super.init(size: size)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func didMove(to view: SKView) {
    var background: SKSpriteNode
    /*if (won) {
      background = SKSpriteNode(imageNamed: "YouWin")
      run(SKAction.playSoundFileNamed("win.wav", 
          waitForCompletion: false))
    } else {*/
      background = SKSpriteNode(imageNamed: "YouLose")
      run(SKAction.playSoundFileNamed("lose.wav", 
          waitForCompletion: false))
    //}
    
    background.position = 
      CGPoint(x: size.width/2, y: size.height/2)
    self.addChild(background)
    scoreLabel.text = "Score: \(score)"
    scoreLabel.fontColor = SKColor.white
    scoreLabel.fontSize = 100
    scoreLabel.zPosition = 150
    scoreLabel.horizontalAlignmentMode = .right
    scoreLabel.verticalAlignmentMode = .top
    scoreLabel.position = CGPoint(
        x: size.width - CGFloat(50),
        y: size.height - CGFloat(200))
    self.addChild(scoreLabel)
    let buttonPlayAgain = SKSpriteNode(imageNamed: "Play Again Button");
    buttonPlayAgain.name = "playAgain"
    buttonPlayAgain.position = CGPoint(x: size.width/2,
                                       y: size.height/2 - CGFloat(400))
    self.addChild(buttonPlayAgain)
    // More here...
    /*let wait = SKAction.wait(forDuration: 3.0)
    let block = SKAction.run {
      let myScene = GameScene(size: self.size)
      myScene.scaleMode = self.scaleMode
      let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
      self.view?.presentScene(myScene, transition: reveal)
    }
    
    self.run(SKAction.sequence([wait, block]))
    */
  }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first as UITouch!
        let touchLocation = touch!.location(in: self)
        let targetNode = atPoint(touchLocation) as! SKSpriteNode
        if let name = targetNode.name {
            if name == "playAgain" {
                let myScene = GameScene(size: self.size)
                myScene.scaleMode = self.scaleMode
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                self.view?.presentScene(myScene, transition: reveal)
            }
        }
        
    }
  
}
