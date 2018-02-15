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
    @IBAction func onClick(){
        if (email.text?.isEmpty ?? false && password.text?.isEmpty ?? false && confirmPassword.text?.isEmpty ?? false){
            if(password === confirmPassword){
                
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
