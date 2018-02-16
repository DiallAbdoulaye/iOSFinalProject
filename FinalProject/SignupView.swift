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
    @IBOutlet var errorMessage: UILabel!
    @IBOutlet var validMessage: UILabel!
    @IBOutlet var gotoLogin: UIButton!
    @IBOutlet var signUp: UIButton!
    
    @IBAction func signUpClick(){
        if (email.text?.isEmpty ?? true || password.text?.isEmpty ?? true || confirmPassword.text?.isEmpty ?? true){
            validMessage.text = ""
            errorMessage.text = "Email or password invalid"
        }
        else{
            if(password.text == confirmPassword.text){
                StaticUser.instance?.user = User(email:email.text!,password:password.text!)
//                StaticUser.user?.email = email.text
//                StaticUser.user?.password = password.text
                
                errorMessage.text = ""
                validMessage.text = "Successfull sign up"
                print("Email : " + (StaticUser.instance?.user?.email)!)
                print("Password : " + (StaticUser.instance?.user?.password)!)

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
