//
//  UserDefault.swift
//  Job-app
//
//  Created by MAC on 13/04/22.
//

import Foundation

class UserDefault {
    
    private init() {}
    
    static let shared = UserDefault()
    
    var user: User?
}
