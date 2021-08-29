//
//  SOViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 29.08.2021.
//

import UIKit

class SOViewController: UIViewController {
    
    @IBOutlet var girlfriendsCV: UILabel!
    
    var gfCV: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        girlfriendsCV.text = gfCV
        
    }
}
