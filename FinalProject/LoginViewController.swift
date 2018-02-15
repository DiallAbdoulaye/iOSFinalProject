//
//  LoginViewController.swift
//  FinalProject
//
//  Created by Abdoulaye on 15/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate {
    
    @IBOutlet weak var signin: SignInView!
    @IBOutlet weak var signup: SignupView!
    
    func toRegister(clicked: Bool) {
        signin.isHidden = clicked
        signup.isHidden = !clicked
    }
    
    func toLogin(clicked: Bool) {
        signup.isHidden = clicked
        signin.isHidden = !clicked
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        signup.isHidden = true
        signin.delegate = self
        signup.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
