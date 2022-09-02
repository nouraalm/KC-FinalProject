//
//  otherDetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct otherDetailView: View {
    var name: String
    var username: String
    var email: String
    var phonenumb: String
    var pass: String
    var body: some View {
        Form{
            
            Section(header: Text("Your Username:")) {
                Text(name)
            }
          
            Section(header: Text("Your Password:")){
                Text(username)
                
            }
            
            Section(header: Text("Your Email:")){
                Text(email)
            }
            
            Section(header: Text("Your phone number:")){
                Text(phonenumb)
            }
            Section(header: Text("Your phone number:")){
                Text(pass)
            }
        }
    }
}

struct otherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        otherDetailView(name: "akb", username: "kabsd", email: "akbc", phonenumb: "kajnc", pass: "kajbnc")
    }
}
