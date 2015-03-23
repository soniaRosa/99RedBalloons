//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Sónia Rosa on 21/03/15.
//  Copyright (c) 2015 Sónia Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  // MARK: - Properties
    
    var balloons: [Balloon] = []
    var currenntIndex = 0
    
  // MARK: - IBOutlet
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
  // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      createBalloons(99)
    }
    
  // MARK: - IBAction

    @IBAction func nextBarButtonItem(sender: UIBarButtonItem) {

        
        var balloon = balloons[currenntIndex]
        
        
        UIView.transitionWithView(self.view, duration: 1.0, options: UIViewAnimationOptions.TransitionCurlUp, animations:{
            
            self.myImageView.image = balloon.image
            self.myLabel.text = String(balloon.numberBallon) 
            
            self.currenntIndex += 1

            
            }
            , completion: {(fisnish:Bool) -> () in
                
        })
        
    }
    
  // MARK: - Helper Function
        
    func createBalloons (numberToBalloons: Int) {
            
            var newBalloon = Balloon()
            
            for var ballon = 0 ; ballon < numberToBalloons; ballon++ {
                
                newBalloon.numberBallon = ballon
                
                let randomImageNumber = Int(arc4random_uniform(UInt32(5)))
                
                switch randomImageNumber {
                    
                case 0:
                    
                    newBalloon.image = UIImage(named: "RedBalloon1.jpg")
                    
                case 1:
                    
                   newBalloon.image = UIImage(named: "RedBalloon2.jpg")
                    
                case 2:
                    
                    newBalloon.image = UIImage(named: "RedBalloon3.jpg")
                    
                case 3:
                    
                    newBalloon.image = UIImage(named: "RedBalloon4.jpg")
                    
                case 4:
                    newBalloon.image = UIImage(named: "BerlinTVTower")
                default:
                    println("default")
                }
                
                self.balloons.append(newBalloon)
          }
    }
    
    
 
}
