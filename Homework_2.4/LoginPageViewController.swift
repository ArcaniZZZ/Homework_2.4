//
//  ViewController.swift
//  Homework_2.4
//
//  Created by Arcani on 27.08.2021.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var letsStartButton: UIButton!
    @IBOutlet var remindUsernameButton: UIButton!
    @IBOutlet var remindPasswordButton: UIButton!
    
    // MARK: - Private Properties
    private let password = "Password"
    private let login = "Username"
        
    // MARK: - Overriden functions
    override func viewDidLayoutSubviews() {
        makeTheButtonNice(buttons:
                            letsStartButton,
                          remindUsernameButton,
                          remindPasswordButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loggedInVc = segue.destination as? GreetingScreenViewController
        else {
            return
        }
        loggedInVc.username = login
    }
    
    // MARK: - IB Actions
    
    @IBAction func loginButtonPressed() {
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
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginField.text = nil
        passwordField.text = nil
    }
}

// MARK: - Extension for button style
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

// MARK: - Extension for alerts
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

// MARK: - Extension for UITextFieldDelegate
extension LoginPageViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginField {
            passwordField.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
