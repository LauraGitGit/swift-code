//
//  ViewController.swift
//  WarApp
//
//  Created by Laura Velma on 2017-12-01.
//  Copyright © 2017 LauraVelma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLable: UILabel!
    
    @IBOutlet weak var rightScoreLable: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
    
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            // Update the score
            leftScore += 1
            
            // Update the label
            leftScoreLable.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            
            // Update the score
            rightScore += 1
            
            // Update the label
            rightScoreLable.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
        
        
        
    }
    
    
    
    


}

