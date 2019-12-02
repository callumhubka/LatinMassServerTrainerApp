//
//  ViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 9/28/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //giving buttons and textbox outlets so I can modify them programmatically
    @IBOutlet var learnButton: UIButton!
    @IBOutlet var quizButton: UIButton!
    @IBOutlet var textBox: UITextView!
    
    //all buttons for this page controlled via view controller rather than programmatically
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //giving buttons and textbox rounded corners
        learnButton.layer.cornerRadius = 20
        quizButton.layer.cornerRadius = 20
        textBox.layer.cornerRadius = 10
        learnButton.clipsToBounds = true
        quizButton.clipsToBounds = true
        textBox.clipsToBounds = true
        
    }
    //unwind segue called by all other pages to go to home page
    @IBAction func homeUnwind(unwindSegue: UIStoryboardSegue) {
    }
}

