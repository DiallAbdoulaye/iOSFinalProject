//
//  SignInView.swift
//  FinalProject
//
//  Created by Abdoulaye on 15/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit
protocol SignInViewDelegate{
    func toRegister(clicked: Bool)
}

class SignInView: UIView {
    var delegate : SignInViewDelegate?
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var errorMessage: UILabel!
    @IBOutlet var validMessage: UILabel!
    @IBOutlet var signin: UIButton!
    @IBOutlet var register: UIButton!
    
    @IBAction func signInClick(){
        if (StaticUser.instance?.user == nil){
            errorMessage.text = "Please register first"
        }
        else{
            if(StaticUser.instance?.user?.email == email.text && StaticUser.instance?.user?.password == password.text){
                errorMessage.text = ""
                validMessage.text = "Successfull login"
            }
            else{
                validMessage.text = ""
                errorMessage.text = "Unable to find a match with this pair of email / password"
            }
        }
    }
    
    @IBAction func toRegisterClick(){
        delegate?.toRegister(clicked: true)
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
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
