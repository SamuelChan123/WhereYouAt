//
//  AddFriendsViewController.swift
//  whereyouat
//
//  Created by Akshara Anand on 4/11/20.
//  Copyright © 2020 CS290. All rights reserved.
//

import UIKit

class AddFriendsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameField: UITextField!
    
    var myUsername = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myUsername = UserDefaults.standard.string(forKey: "username") ?? ""
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addToConfirm" {
            let destVC = segue.destination as! ConfirmAddFriendsViewController
            destVC.inheritedFriendName = usernameField.text!
        }

    }
    

}
