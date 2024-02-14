//
//  ProfilRegisterNewCustomer.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 30/11/2023.
//

import Foundation


struct ProfilRegisterNewCustomer: Codable {
    var data: [String: String] = [:]
    
    init(first_name: String, last_name: String, email: String, password: String) {
        self.data["first_name"] = first_name
        self.data["last_name"] = last_name
        self.data["email"] = email
        self.data["password"] = password
    }
}
