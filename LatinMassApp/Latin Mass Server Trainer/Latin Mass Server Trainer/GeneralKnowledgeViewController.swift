//
//  GeneralKnowledgeViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/8/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class GeneralKnowledgeViewController: UIViewController {

    @IBAction func showGeneralKnowledge(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: generalPopupView)
    }
    
    @IBAction func showSittingInChoir(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: sittingPopupView)
    }
    
    @IBAction func doneGeneral(_ sender: Any) {
        animateOut(desiredView: generalPopupView)
        animateOut(desiredView: blurView)
    }
    
    @IBAction func doneSitting(_ sender: Any) {
        animateOut(desiredView: sittingPopupView)
        animateOut(desiredView: blurView)
    }
    
    @IBOutlet var generalPopupView: UIView!
    @IBOutlet var sittingPopupView: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        blurView.bounds = self.view.bounds
        generalPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
        sittingPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.75)
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
