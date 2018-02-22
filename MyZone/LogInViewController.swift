//
//  ViewController.swift
//  MyZone
//
//  Created by NILESH_iOS on 12/02/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginBtnTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let infoVC = storyboard.instantiateViewController(withIdentifier: "InfoVCID") as! InfoViewController
        infoVC.modalPresentationStyle = .custom
        infoVC.transitioningDelegate = self
        present(infoVC, animated: true, completion: nil)
    }
    
}

extension LogInViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return HalfSizePresentationController(presentedViewController:presented, presenting: presenting)
    }
}

class HalfSizePresentationController: UIPresentationController {
    override var frameOfPresentedViewInContainerView: CGRect {
        return CGRect(x: 0, y: 45, width: containerView!.bounds.width, height: containerView!.bounds.height-45)
    }
}

//_placeholderLabel.textColor
