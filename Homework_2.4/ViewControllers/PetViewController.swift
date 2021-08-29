//
//  PetViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 29.08.2021.
//

import UIKit

class PetViewController: UIViewController {
    
    @IBOutlet var petsName: UILabel!
    
    var pet: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        petsName.text = pet
    }
}
