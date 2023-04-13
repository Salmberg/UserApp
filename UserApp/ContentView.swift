//
//  ContentView.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI



struct ContentView: View {
    
   @StateObject var users = UsersViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(users.listOfUsers) { user in
                        NavigationLink(destination: UserView(user: user, users: users)){
                            RowView(user: user)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .navigationBarItems(trailing: NavigationLink(destination: UserView( users: users)){
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
        VStack(alignment: .leading){
            Image(user.image)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(100)
                .aspectRatio(contentMode: .fill)
            Text(user.name)
                .font(.headline.bold())
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        
    }
}
