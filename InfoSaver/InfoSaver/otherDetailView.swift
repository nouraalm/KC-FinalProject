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
                Text(username)
            }
          
            Section(header: Text("Your Email:")){
                Text(email)
                
            }
            
            Section(header: Text("Your Phone Number:")){
                Text(phonenumb)
            }
            
            Section(header: Text("Your Password:")){
                Text(phonenumb)
            }
//            Section(header: Text("Your phone number:")){
//                Text(pass)
//            }
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

struct otherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        otherDetailView(name: "akb", username: "kabsd", email: "akbc", phonenumb: "kajnc", pass: "kajbnc")
    }
}
