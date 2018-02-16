//
//  StaticUser.swift
//  FinalProject
//
//  Created by Flavien Medina on 16/02/2018.
//  Copyright © 2018 Abdoulaye. All rights reserved.
//

import UIKit

class StaticUser {
    static let instance: StaticUser? = StaticUser()
    var user:User? = nil
    
    private init(){}
}
