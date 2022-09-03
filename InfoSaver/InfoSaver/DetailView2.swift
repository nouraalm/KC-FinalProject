//
//  DetailView2.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct DetailView2: View {
    var username: String
    var password: String
    var email: String
    var phonenumb: String
    var body: some View {
       // VStack {
            
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
                
                Section(header: Text("Your phone number:")){
                    Text(phonenumb)
                }
            } .navigationBarItems(trailing:
                                    
                                    Button(action: {
                //
            }, label: {
                Image(systemName: "square.and.pencil")
            })
        .tint(.black)
                                
                            )

        //} //form
}
}
struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2(username: "sj", password: "aihud", email: "ksjhf", phonenumb: "kja")
    }
}
