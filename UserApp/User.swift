//
//  User.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import Foundation


struct User : Identifiable, Equatable {
    var id = UUID()
    var name: String
    var email : String
    var image : String
    
}


