//
//  ContentView.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI



struct ContentView: View {
    
    var users = [User(name: "David", email: "@@@", image: "image"),
                 User(name: "Johan", email: "@@@", image: "image"),
                 User(name: "Anna", email: "@@@", image: "image")]
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(users) { user in
                        NavigationLink(destination: UserView()){
                            RowView(user: user)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .navigationBarItems(trailing: NavigationLink(destination: UserView()){
                Image(systemName: "plus.circle")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    let user : User
    
    var body: some View {
        HStack {
            Image(user.image)
            Text(user.name)
            Spacer()
            Text(user.email.prefix(5)+"...")
        }
    }
}
