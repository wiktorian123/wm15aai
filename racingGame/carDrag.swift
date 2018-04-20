//
//  carDrag.swift
//  racingGame
//
//  Created by Wiktor Maciejewski on 19/04/2018.
//  Copyright © 2018 Wiktor Maciejewski. All rights reserved.
//

import UIKit



var startPoint: CGPoint?


class carDrag: UIImageView {
   
    var dynamicItemBehaviour: UIDynamicItemBehavior!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startPoint = touches.first?.location(in:self)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        let currentPoint = touches.first?.location(in: self)
        let differenceX = currentPoint!.x - startPoint!.x
        let differenceY = currentPoint!.y - startPoint!.y
        
        self.center = CGPoint(x: self.center.x+differenceX,y: self.center.y+differenceY)
        
       
        
        
    
    }

    
}
