//
//  MissaCantataViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/8/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class MissaCantataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
func animateIn(desiredView: UIView) {
    let backgroundView = self.view!
    
    backgroundView.addSubview(desiredView)
    
    desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    desiredView.alpha = 0
    desiredView.center = backgroundView.center
    
    UIView.animate(withDuration: 0.3, animations: {
        desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        desiredView.alpha = 1
    })
}

func animateOut(desiredView: UIView) {
    UIView.animate(withDuration: 0.3, animations: { desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
    }, completion: { _ in
        desiredView.removeFromSuperview()
    })
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
