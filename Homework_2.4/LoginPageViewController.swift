//
//  ViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 27.08.2021.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var letsStartButton: UIButton!
    @IBOutlet var remindUsernameButton: UIButton!
    @IBOutlet var remindPasswordButton: UIButton!
    
    let password = "Password"
    let login = "Login"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        makeTheButtonNice(buttons:
                            letsStartButton,
                          remindUsernameButton,
                          remindPasswordButton)
    }
    
    @IBAction func logInButton() {
        guard loginField.text == login && passwordField.text == password
        else {
            wrongEntry()
            return
        }
    }
    
    @IBAction func remindUsername() {
        reminder(title: "You silly goose!",
                 message: "Your login is: Username")
    }
    
    @IBAction func remindPassword() {
        reminder(title: "You silly goose!",
                 message: "Your password is: Password")
    }
    
}

extension LoginPageViewController {
    
    func makeTheButtonNice(buttons: UIButton...) {
        
        let textColor = UIColor(cgColor: CGColor(red: 255,
                                                 green: 255,
                                                 blue: 255,
                                                 alpha: 1))
        
        let shadowColor = UIColor(cgColor: CGColor(red: 0,
                                                   green: 0,
                                                   blue: 0,
                                                   alpha: 0.5))
        
        let contentInsets = UIEdgeInsets(top: 0,
                                         left: 10,
                                         bottom: 0,
                                         right: 10)
        
        
        for button in buttons {
            button.layer.borderWidth = 0.5
            button.layer.cornerRadius = 5
            button.layer.backgroundColor = CGColor(red: 0,
                                                   green: 0,
                                                   blue: 0,
                                                   alpha: 0.6)
            
            button.setTitleColor(textColor, for: .normal)
            button.setTitleShadowColor(shadowColor, for: .normal)
            button.contentEdgeInsets = contentInsets
            button.titleLabel?.minimumScaleFactor = 0.5
            button.titleLabel?.adjustsFontSizeToFitWidth = true
        }
    }
}

extension LoginPageViewController {
    
    private func reminder(title: String, message: String) {
        let reminder = UIAlertController(title: title,
                                         message: message,
                                         preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Oh me!",
                                     style: .default)
        
        reminder.addAction(okAction)
        present(reminder, animated: true)
    }
    
    private func wrongEntry(title: String = "Oops!",
                            message: String = "Incorrect password or login!") {
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Silly goose!",
                                     style: .default,
                                     handler: { _ in
                                        self.passwordField.text = nil })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}


