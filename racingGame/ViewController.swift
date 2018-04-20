//
//  ViewController.swift
//  racingGame
//
//  Created by Wiktor Maciejewski on 19/04/2018.
//  Copyright © 2018 Wiktor Maciejewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var location: CGPoint?
    var mainCar: UIView?
    var dynamicAnimator: UIDynamicAnimator!
    
    var dynamicItemBehaviour: UIDynamicItemBehavior!
    
    var collisionBehavior: UICollisionBehavior!
    
    
    var running = true
    let obstacleView = UIImageView(image:nil)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    @IBOutlet weak var roadImageView: UIImageView!
    
    
    
    
    
    
    func createObstacle(){
        
        
        
        
        let randomObstacleNum = 1+arc4random_uniform(7)
        let randomPositionNum = Int(arc4random_uniform(250))
        
        
        obstacleView.image = UIImage(named: "car\(randomObstacleNum).png")
        obstacleView.frame = CGRect(x:randomPositionNum, y: 0, width: 30, height: 50)
        self.view.addSubview(obstacleView)
        
        // create random car obstacle at a random x co-ordinate
        
        
        dynamicAnimator = UIDynamicAnimator(referenceView: obstacleView)
        
        self.dynamicItemBehaviour = UIDynamicItemBehavior(items: [obstacleView])
        
        self.dynamicItemBehaviour.addLinearVelocity(CGPoint(x: 0,y: 5), for: obstacleView)
        dynamicAnimator.addBehavior(self.dynamicItemBehaviour)
        // falling animation
        
        
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        var roadImage: [UIImage]!
        
        roadImage = [UIImage(named: "road1")!,
                     UIImage(named: "road2")!,
                     UIImage(named: "road3")!,
                     UIImage(named: "road4")!,
                     UIImage(named: "road5")!,
                     UIImage(named: "road6")!,
                     UIImage(named: "road7")!,
                     UIImage(named: "road8")!,
                     UIImage(named: "road9")!,
                     UIImage(named: "road10")!,
                     UIImage(named: "road11")!,
                     UIImage(named: "road12")!,
                     UIImage(named: "road13")!,
                     UIImage(named: "road14")!,
                     UIImage(named: "road15")!,
                     UIImage(named: "road16")!,
                     UIImage(named: "road17")!,
                     UIImage(named: "road18")!,
                     UIImage(named: "road19")!,
                     UIImage(named: "road20")!]
        
        roadImageView.image = UIImage.animatedImage(with: roadImage, duration: 0.5)
        
        //create animated road background
        
        
        
        var timer = DispatchTime.now() + 2
        let end = DispatchTime.now() + 20
        while (timer <= end) {
            
            
        
            DispatchQueue.main.asyncAfter(deadline: timer) {
              self.createObstacle()

            }
            timer = timer + 2

            
            
        }
        
        
    
    
        
        
        
        
        
        
        
        
        

        
        
        
        
        
    
        
        
        
        
        
       
        
        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
        
        
    
        
        
        
        
        
    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

