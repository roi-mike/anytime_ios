//
//  RegisterProfilField.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 25/11/2023.
//

import Foundation

class RegisterProfilField{
    
    var first_name: String;
    var last_name: String;
    var email:  String;
    var password: String;
    
    init(first_name: String, last_name: String, email: String, password: String
    ){
        self.first_name = first_name;
        self.last_name = last_name;
        self.email = email;
        self.password = password;
    }
    
}
