//
//  APIBuilder.swift
//  Job-app
//
//  Created by MAC on 12/04/22.
//

import Foundation

class APIBuilder {
    
    static private let baseUrl = "http://18.209.152.87/"
    static private let login = "login/"
    static private let register = "register/"
    static private let user = "update-data/%@/"
    static private let logout = "logout/"
    
    static var loginURL:String {
        self.baseUrl + self.login
    }
    
    static var registerURL:String {
        self.baseUrl + self.register
    }
    
    static func userURL(id: String) -> String {
        self.baseUrl + String(format: self.user ,id)
    }
    
    static var logoutURL:String {
        self.baseUrl + self.logout
    }
}

