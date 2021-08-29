//
//  AboutMeViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 29.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMe: UILabel!
    
    var cv: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMe.text = cv
    }
    
}
