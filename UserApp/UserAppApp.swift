//
//  UserAppApp.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI

@main
struct UserAppApp: App {
    
    @StateObject var users = UsersViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(users)
           
        }
    }
}
