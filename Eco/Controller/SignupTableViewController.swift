//
//  SignupTableViewController.swift
//  InstagramUI
//
//  Created by Takhmina Talipova on 8/3/18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import UIKit
import Firebase

class SignupTableViewController: UITableViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func CreateNewAccountTapped(_ sender: Any) {
        
        if emailTextField.text != " "
            && (passwordTextField.text?.characters.count)! > 6
            && (usernameTextField.text?.characters.count)! > 6
            && fullNameTextField.text != " "
        {
            
            let username = usernameTextField.text!
            let email = emailTextField.text!
            let password = passwordTextField.text!
            let fullName = fullNameTextField.text!
            
            // 1. sign up a new account
            Auth.auth().createUser(withEmail: email, password: password, completion: { (firUser, error) in
                
                if error != nil {
                    // ERROR - report
                    print(error)
                } else if let firUser = firUser {
                    // 2. save the user's information -- User class!!!
                    let newUser = User(uid: firUser.user.uid, username: username, fullName: fullName, email: email)
                    newUser.save(completion: { (error) in
                        if error != nil {
                            print(error)
                        } else {
                            
                            // SUCCESSFULLY SIGNED UP A NEW ACCOUNT!
                            // 3. log in the user to use the app
                            Auth.auth().signIn(withEmail: email, password: password, completion: { (firUser, error) in
                                
                                if let error = error {
                                    print("Errrooooor")
                                    print(error)
                                } else {
                                    self.dismiss(animated: false, completion: nil)
                                }
                            })
                        }
                    })
                }
            })

    }
    
            
            
    }
    
}

