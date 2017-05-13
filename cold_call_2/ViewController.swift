//
//  ViewController.swift
//  cold_call_2
//
//  Created by Marvin Alganes on 5/11/17.
//  Copyright © 2017 Marvin Alganes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let cohortNames = ["Marvin", "Kevin", "Masato", "Kavya", "Shruta"]
    
    
    @IBAction func coldButton(_ sender: UIButton) {
        let idx = Int(arc4random_uniform(UInt32(cohortNames.count)))
        print("Button is pressed at tag \(sender.tag)")
        
        // the condition should refer to index, but printing, it should add value of 1 so it excludes 0.
        
        if idx == 0  || idx == 1{
            numberLabel.textColor = UIColor.red
        }
        if idx == 2  || idx == 3{
            numberLabel.textColor = UIColor.orange
        }
        if idx == 4 {
            numberLabel.textColor = UIColor.green
        }
        
        
        nameLabel.text = cohortNames[idx]
        numberLabel.text = String(idx + 1)
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.text = ""
    }


}

