//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Jay on 3/19/22.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIView.animate(withDuration: 2.0) {
        self.myLabel.center.x += self.view.bounds.width
        self.myTextField.center.x += self.view.bounds.width
        self.myImageView.center.x += self.view.bounds.width
        }
        
    }
    
    // Appear from left
    override func viewWillAppear(_ animated: Bool) {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
    }
}

