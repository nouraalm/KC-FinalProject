//
//  DetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct DetailView: View {
    var username: String
    var password: String
    var email: String
    var phonenumb: String
    var body: some View {
        Form{
            
            Section(header: Text("Your Username:")) {
                Text(username)
            }
            
            
            Section(header: Text("Your Password:")){
                Text(password)
                
            }
            
            
            Section(header: Text("Your Email:")){
                Text(email)
                
            }
            
            Section(header: Text("Your Phonenumber:")){
                Text(phonenumb)
                
            }
            
           

        }  //form
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(username: "ksnc", password: "kmanc", email: "kan", phonenumb: "kjnd")
    }
}
