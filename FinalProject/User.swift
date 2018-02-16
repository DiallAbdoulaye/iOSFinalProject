//
//  User.swift
//  FinalProject
//
//  Created by Abdoulaye on 15/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit

class User: NSObject {
    static let StaticUser: User = User()
    var email: String = ""
    var password: String = ""
    func saveIntoStaticUser(userEmail:String,userPassword:String){
        User.StaticUser.email = userEmail
        User.StaticUser.password = userPassword
    }
}

