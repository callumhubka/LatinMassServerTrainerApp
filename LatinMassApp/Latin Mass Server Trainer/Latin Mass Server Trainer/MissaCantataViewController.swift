//
//  MissaCantataViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/8/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class MissaCantataViewController: UIViewController {

    //buttons triggering blurView and then respective popups
    @IBAction func showOnlyServer(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: onlyPopupView)
    }
    
    //buttons dismissing respective popups and blur view
    @IBAction func doneOnly(_ sender: Any) {
        animateOut(desiredView: onlyPopupView)
        animateOut(desiredView: blurView)
    }
    //connection between popups/blurView and view controller
    @IBOutlet var onlyPopupView: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //sets blurview to be entire page when called for popups
        blurView.bounds = self.view.bounds
        //sets sizes of popups
        onlyPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
    }
    
//function that manages animateIn for popups
func animateIn(desiredView: UIView) {
    let backgroundView = self.view!
    
    backgroundView.addSubview(desiredView)
    
    //starts larger and invisible and fades in while shrinking to scale
    desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    desiredView.alpha = 0
    desiredView.center = backgroundView.center
    
    UIView.animate(withDuration: 0.3, animations: {
        desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        desiredView.alpha = 1
    })
}
//function that manages animateOut for popups
func animateOut(desiredView: UIView) {
    UIView.animate(withDuration: 0.3, animations: { desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
    }, completion: { _ in
        desiredView.removeFromSuperview()
    })
}

    
    @IBAction func missaCantataUnwind(unwindSegue: UIStoryboardSegue) {}

}
