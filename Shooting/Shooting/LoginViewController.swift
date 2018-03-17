//
//  LoginViewController.swift
//  ARViewer
//
//  Created by Yuqing Huang  on 05/03/2018.
//  Copyright © 2018 Faris Sbahi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = UserDefaults.standard.value(forKey: "username") as? String
    }

    @IBAction func saveName(_ sender: UIButton) {
        print("save name")
        UserDefaults.standard.set(nameField.text, forKey: "username")
        performSegue(withIdentifier: "startShooting", sender: self)
    }
    
    func isValid(username: String) -> Bool {
        return username.count > 0 && username.count < 10
    }
}
