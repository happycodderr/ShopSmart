//
//  User.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import Foundation

struct User: Identifiable, Codable {
    
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var mockUser = User(id: NSUUID().uuidString, fullName: "Kobe Bryant", email: "test@gmail.com")
}
