//
//  NoIncenseViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/15/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class NoIncenseViewController: UIViewController {

    @IBAction func showMC(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: mcPopupView)
    }
    
    @IBAction func showAcolyte1(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: acolyte1PopupView)
    }
    
    @IBAction func showAcolyte2(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: acolyte2PopupView)
    }
    
    @IBAction func doneMC(_ sender: Any) {
        animateOut(desiredView: mcPopupView)
        animateOut(desiredView: blurView)
    }
    
    @IBAction func doneAcolyte1(_ sender: Any) {
        animateOut(desiredView: acolyte1PopupView)
        animateOut(desiredView: blurView)
    }
    
    @IBAction func doneAcolyte2(_ sender: Any) {
        animateOut(desiredView: acolyte2PopupView)
        animateOut(desiredView: blurView)
    }
    
    @IBOutlet var mcPopupView: UIView!
    @IBOutlet var acolyte1PopupView: UIView!
    @IBOutlet var acolyte2PopupView: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        blurView.bounds = self.view.bounds
        mcPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
        acolyte1PopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
        acolyte2PopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
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
    
    
}
