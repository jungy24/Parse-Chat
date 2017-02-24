//
//  LoginViewController.swift
//  Parse Chat
//
//  Created by Jungyoon Yu on 2/23/17.
//  Copyright © 2017 Jungyoon Yu. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        var user = PFUser()
        user.username = emailTextField.text
        user.password = passwordTextField.text
        
        // other fields can be set just like with PFObject
        
        user.signUpInBackground { (result, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("We signed up yay!")
                // TODO Go to next screen
                
            }
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if let error = error {
                print("login error")
            } else {
                // TODO Go to next screen
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
