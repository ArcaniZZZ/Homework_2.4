//
//  SOViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 29.08.2021.
//

import UIKit

class SOViewController: UIViewController {
    
    @IBOutlet var girlfriendsCV: UILabel!
    
    var aboutMe: String!
    var petsName: String!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let significantOtherVC = segue.destination as? SOViewController,
              let girlfriendCV = person.significantOthersCV,
              let pet = person.petsName else { return }
        significantOtherVC.aboutMe = girlfriendCV
        significantOtherVC.petsName = pet
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        girlfriendsCV.text = aboutMe
        
    }
}
