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
    @IBOutlet var signin: UIButton!
    @IBOutlet var register: UIButton!
    
    @IBAction func signInClick(){
        if (User.StaticUser.email.isEmpty && User.StaticUser.password.isEmpty){
            print("Please register first")
        }
        else{
            if(User.StaticUser.email == email.text && User.StaticUser.password == password.text){
                print("Successfull login")
            }
            else{
                print("Unable to find a match with this pair of email / password")
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
