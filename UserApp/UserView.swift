//
//  UserView.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI


struct UserView: View {
    var user : User?
   @ObservedObject var users : UsersViewModel
    
    
    @State var image : String = ""
    @State var name : String = ""
    @State var email : String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Image(image)
            TextEditor(text: $name)
            TextEditor(text: $email)
        }
        .onAppear(perform: setUser)
        .navigationBarItems(trailing: Button("Save") {
            saveUser()
            presentationMode.wrappedValue.dismiss()
        })
        
    }
    
    private func setUser() {
        if let user = user {
            name = user.name
            email = user.email
        }
        
    }
    
    private func saveUser() {
        
        if let user = user {
            users.update(user: user, with: name)
            //updatera
        } else {
            //skapa en ny
            let newUser = User(name: name, email: email, image: image)
            users.listOfUsers.append(newUser)
        }
    }
    
  

    
  //  struct UserView_Previews: PreviewProvider {
  //      static var previews: some View {
  //          UserView()
  //      }
  //  }
}
