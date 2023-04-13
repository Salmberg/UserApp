//
//  ListOfUsersViewModel.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import Foundation

class UsersViewModel : ObservableObject {
   @Published var users = [User]()
    
    init(){
        addMockData()
    }
    
    func addMockData() {
        
        users.append(User(name: "Kalle", email: "@email.com", image: ""))
        users.append(User(name: "David", email: "@Salmberg", image: ""))
        users.append(User(name: "Johan", email: "@mailen.se", image: ""))
        users.append(User(name: "Anna", email: "Anna@email.com", image: ""))
    }
    
   
    }

