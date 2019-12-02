//
//  NoIncenseViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/15/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class NoIncenseViewController: UIViewController {

    //buttons triggering blurView and then respective popups
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
    @IBAction func showDiagram(_ sender: Any) {
        animateIn(desiredView: blurView2)
        animateIn(desiredView: diagramView)
    }
    
    //buttons dismissing respective popups and blur view
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
    @IBAction func doneDiagram(_ sender: Any) {
        animateOut(desiredView: diagramView)
        animateOut(desiredView: blurView2)
    }
    
    //connection between popups/blurView and view controller
    @IBOutlet var mcPopupView: UIView!
    @IBOutlet var acolyte1PopupView: UIView!
    @IBOutlet var acolyte2PopupView: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var diagramView: UIView!
    //required because of layering of views
    @IBOutlet var blurView2: UIVisualEffectView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //sets blurview to be entire page when called for popups
        blurView.bounds = self.view.bounds
        //second blurview so you don't eliminate the blur view when dismissing the diagram popup
        blurView2.bounds = self.view.bounds
        //sets sizes of popups
        mcPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.9)
        acolyte1PopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.9)
        acolyte2PopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.9)
        diagramView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: (self.view.bounds.width * 0.9) * (442/577))
    }
    
//function that manages animateIn for popups
func animateIn(desiredView: UIView) {
    let backgroundView = self.view!//needs to be within viewController, cannot place in another file and imported in
    
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
    
    
}
