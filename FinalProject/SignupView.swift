//
//  SignupView.swift
//  FinalProject
//
//  Created by Abdoulaye on 15/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit

protocol SignUpViewDelegate{
    func toLogin(clicked: Bool)
}

class SignupView: UIView {

    var delegate : SignUpViewDelegate?
    @IBOutlet var contentView: UIView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var confirmPassword: UITextField!
    @IBOutlet var gotoLogin: UIButton!
    @IBOutlet var signUp: UIButton!
    
    @IBAction func signUpClick(){
        if (email.text?.isEmpty ?? true && password.text?.isEmpty ?? true && confirmPassword.text?.isEmpty ?? true){
            print("Email or password invalid")
        }
        else{
            if(password.text == confirmPassword.text){
                User.StaticUser.saveIntoStaticUser(userEmail:email.text!, userPassword:password.text!)
                print("Successfull sign up")
                print("Email : " + User.StaticUser.email)
                print("Password : " + User.StaticUser.password)

            }
        }
    }
    
    @IBAction func toLoginClick(){
        delegate?.toLogin(clicked: true)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignupView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
