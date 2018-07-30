//
//  ViewController.swift
//  Eco
//
//  Created by Takhmina Talipova on 7/22/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class MainVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil{
            self.presentLoggedInScreen()
        }
    }

   
    @IBAction func createBtnTapped(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                
                if let firebaseError = error {
                    print (firebaseError.localizedDescription)
                    return
                }
                self.presentLoggedInScreen()
                print("User Created!")
            }
        }
    }
    
    @IBAction func signinBtnTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                
                if let firebaseError = error {
                    print (firebaseError.localizedDescription)
                    return
                }
                self.presentLoggedInScreen()
                print("User sign in!!")
            }
        }
    }
    
    func presentLoggedInScreen(){
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInVC: LoggedVC = storyboard.instantiateViewController(withIdentifier: "LoggedVC") as! LoggedVC
        self.present(loggedInVC, animated: true, completion: nil)
    }


}
