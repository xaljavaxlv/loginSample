//
//  ViewController.swift
//  loginSample
//
//  Created by Vlad Zavada on 22.10.2021.
//

import UIKit
class Users {
    let username = "user"
    let password = "password22"
}


class ViewController: UIViewController {
    @IBOutlet var userInputField: UITextField!
    @IBOutlet var passwordInputField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view.
    }

    let user1 = Users()
    var usersList: [String : String] = ["user":"password", "user1":"password"]
    var user2 = "xlv"
    var password2 = "xlv"
  
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in",         preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertAction.Style.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func logInButton(_ sender: Any) {
        if userInputField.text != user2 || passwordInputField.text != password2 {
            showSimpleAlert()
        }
    }
    
    
}

