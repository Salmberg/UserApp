//
//  ListOfUsersViewModel.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import Foundation

class UsersViewModel : ObservableObject {
   @Published var listOfUsers = [User]()
    
    init(){
        addMockData()
    }
    
    func addMockData() {
        listOfUsers.append(User(name: "Kalle", email: "Kalle@email.com", image: "Hund"))
        listOfUsers.append(User(name: "David", email: "David@Salmberg", image: "Kaffe"))
        listOfUsers.append(User(name: "Johan", email: "@mailen.se", image: "Bär"))
        listOfUsers.append(User(name: "Anna", email: "Anna@email.com", image: "Gotland"))
    }
    
    func update(user: User, with name: String) {
        
        if let index =  listOfUsers.firstIndex(of: user) {
            listOfUsers[index].name = name
        }
        
    }
    
   }

