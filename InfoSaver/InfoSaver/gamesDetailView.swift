//
//  gamesDetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct gamesDetailView: View {
    var gamename: String
    var username: String
    var email: String
    var pass: String
    var body: some View {
        Form{
            Section(header: Text("Your Username:")) {
                Text(username)
            }
            Section(header: Text("Your Email:")) {
                Text(email)
            }
            Section(header: Text("Your password:")) {
                Text(pass)
            }
        } .navigationBarItems(trailing:
                                
                                Button(action: {
            //
        }, label: {
            Image(systemName: "square.and.pencil")
        })
    .tint(.black)
                            
                        )
                            
                        

    }
}

struct gamesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        gamesDetailView(gamename: "akjc", username: "aknc", email: "kancb", pass: "kanb")
    }
}
