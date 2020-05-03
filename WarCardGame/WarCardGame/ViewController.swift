//
//  ViewController.swift
//  WarCardGame
//
//  Created by Yash Bonde on 4/29/20.
//  Copyright © 2020 Yash Bonde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore=0
    var rightScore=0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber=Int.random(in: 2...14)
        let rightNumber=Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        if leftNumber > rightNumber {
            leftScore+=1
            leftScoreLabel.text=String(leftScore)
        }
        else if rightNumber > leftNumber {
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        }
    }
    

}

