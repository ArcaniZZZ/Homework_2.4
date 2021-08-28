//
//  GreetingScreenViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 28.08.2021.
//

import UIKit

class GreetingScreenViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        greetingUserLabel.text = "Hello, \(username)!"
    }
}
