//
//  ViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 9/28/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generalKnowledgeUnwind(unwindSegue: UIStoryboardSegue){}
    @IBAction func lowMassUnwind(unwindSegue: UIStoryboardSegue){}
    @IBAction func missaCantataUnwind(unwindSegue: UIStoryboardSegue){}
    @IBAction func solemnMassUnwind(unwindSegue: UIStoryboardSegue){}
    @IBAction func learnUnwind(unwindSegue: UIStoryboardSegue){}
    @IBAction func quizUnwind(unwindSegue: UIStoryboardSegue){}
}

