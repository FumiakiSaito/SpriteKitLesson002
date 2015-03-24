//
//  GameScene.swift
//  SpriteKitLesson002
//
//  Created by Fumiaki Saito on 2015/03/24.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // スプライトノードの変数
    var mySprite = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {

        // スプライトノードを作る
        let spColor = SKColor.redColor()
        mySprite = SKSpriteNode(color: spColor, size: CGSizeMake(50, 50))

        mySprite.position = CGPoint(
            x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(mySprite)

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        
        for touch: AnyObject in touches {

            // タップ座標を取得
            let location = touch.locationInNode(self)
            
            // タップされた座標へ0.5秒で移動するアクション
            let action = SKAction.moveTo(location, duration: 0.5)
  
            // アクションを実行
            mySprite.runAction(action)
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
