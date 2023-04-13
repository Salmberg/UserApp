//
//  ContentView.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI

var users = [User(name: "David", email: "@@@", image: "image"),
             User(name: "Johan", email: "@@@", image: "image"),
             User(name: "Anna", email: "@@@", image: "image")]

struct ContentView: View {
    var body: some View {
        VStack {
            List() {
                ForEach(users) { user in
                    RowView(user: user)
                }
            }
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
