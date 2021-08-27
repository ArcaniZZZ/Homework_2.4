//
//  ViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 27.08.2021.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    @IBOutlet var letsStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTheButtonNice(button: letsStartButton)
    }
    
    func ViewWillLayoutSubview() {
        makeTheButtonNice(button: letsStartButton)
    }
}


extension LoginPageViewController {
    
    func makeTheButtonNice(button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.layer.backgroundColor = UIColor.systemBlue.cgColor
    }
}



