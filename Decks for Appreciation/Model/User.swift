//
//  User.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
    
}

extension User{
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Kobe Bryant", email: "test@gmail.com")
}
