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
        
        guard let petVC = segue.destination as? PetViewController,
              let petName = petsName else { return }
        
        petVC.pet = petName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        girlfriendsCV.text = aboutMe
        
    }
}
