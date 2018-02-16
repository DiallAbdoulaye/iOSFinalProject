//
//  User.swift
//  FinalProject
//
//  Created by Abdoulaye on 15/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit

class User: NSObject {
    var email: String
    var password: String
    static let StaticUser: User? = User(email: email, password: password)
    init(email:String,password:String) {
        self.email = email
        self.password = password
    }

}
