//
//  ViewController.swift
//  WarCardGame
//
//  Created by Melroy Noronha on 16/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0;
    var cpuScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButtonTap(_ sender: Any) {
        
        let leftCardNumber = Int.random(in: 2...14);
        let rightCardNumber = Int.random(in: 2...14);
        
        leftCard.image = UIImage(named: "card\(leftCardNumber)");
        rightCard.image = UIImage(named: "card\(rightCardNumber)");
        
        if leftCardNumber > rightCardNumber {
            playerScore += 1;
            playerScoreLabel.text = String(playerScore);
        } else if leftCardNumber < rightCardNumber{
            cpuScore += 1;
            cpuScoreLabel.text = String(cpuScore);
        }
    }
    
}

