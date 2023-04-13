//
//  UserView.swift
//  UserApp
//
//  Created by David Salmberg on 2023-04-13.
//

import SwiftUI


struct UserView: View {
    @State var content : String = ""
    
    var body: some View {
        
        TextEditor(text: $content)

    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
