//
//  ViewController.swift
//  Contest
//
//  Created by Austin Dobberfuhl on 11/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if emailTextField.text == "" {
            UIView.animate(withDuration: 0.5) {
                let translateTransform = CGAffineTransform(translationX: 15, y: 0)
                self.emailTextField.transform = translateTransform
            } completion: { _ in
                UIView.animate(withDuration: 0.5) {
                    self.emailTextField.transform = .identity
                }
            }
        } else {
            performSegue(withIdentifier: "contestEntered", sender: sender)
        }
    }
}

