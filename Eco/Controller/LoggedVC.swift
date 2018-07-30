//
//  LoggedVC.swift
//  Eco
//
//  Created by Takhmina Talipova on 7/30/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedVC: UIViewController {

    @IBAction func logoutTapped(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
        }
        catch{
            print("We have a problem with sign out!")
        }
    }
    
    
}
