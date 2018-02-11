//
//  LoginScreen.swift
//  ShoppingRecommendationSystem
//
//  Created by Vaibhav Kumar Singh on 11/02/18.
//  Copyright © 2018 Vaibhav Kumar Singh. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import CWStatusBarNotification

class LoginScreen: UIViewController {
    @IBOutlet weak var username: SkyFloatingLabelTextField?
    @IBOutlet weak var password: SkyFloatingLabelTextField?
    @IBOutlet weak var loginButton: UIButton?
    @IBOutlet weak var createAccount: UIButton?
    let notification = CWStatusBarNotification()

    func setupNotification(_ message: String){
        let notification = CWStatusBarNotification()
        notification.notificationLabelBackgroundColor = UIColor.orange
        notification.notificationAnimationInStyle = .top
        notification.notificationAnimationOutStyle = .top
        notification.notificationLabelTextColor = UIColor.white
        notification.notificationStyle = .navigationBarNotification
        notification.display(withMessage: message, forDuration: 2.0)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton?.layer.cornerRadius = 15.0
        loginButton?.layer.masksToBounds = true
        createAccount?.layer.cornerRadius = 15.0
        createAccount?.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if username?.text == "7531989531" && password?.text == "12345"{
            self.performSegue(withIdentifier: "ToHomeView", sender: self)
        }
        else{
            setupNotification("Invalid Username or Password")
        }
    }
    @IBAction func signUpPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ToSignUpVC", sender: self)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
       setupNotification("Incomplete Field")
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
