//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by Bob Denver
//  Copyright © 2020 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var letterLabels: [UILabel]!
    @IBOutlet weak var currentLetterLabel: UILabel!
    @IBOutlet weak var myStackView: UIStackView!
    
    var counter = 0
    
    var currentLetter = "A"
    
    var letters:[String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
        
        let selectedPoint = sender.location(in: myStackView)
        
        print(selectedPoint)
        for label in letterLabels{
            if label.frame.contains(selectedPoint){
                label.text = currentLetter
            }
        }
        counter += 1
        if counter == 26{
            counter = 0
        }
        print(counter)
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        //comment
        
    }
    
}
