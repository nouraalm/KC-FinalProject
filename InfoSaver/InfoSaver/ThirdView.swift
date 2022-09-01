//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct ThirdView: View {
    
    @State var appstructArray = [
            appstruct(appname: "Instagram", username: "@noura", password: "1234jt7g", email: "kajs", phonenumb: "82364"),
            appstruct(appname: "Snapchat", username: "@noura7", password: "456kjh8", email: "kajs", phonenumb: "82364"),
            appstruct(appname: "TikTok", username: "@nosh", password: "234iuy8h", email: "kajs", phonenumb: "82364"),
            appstruct(appname: "YouTube", username: "@noura almethin", password: "7890087j", email: "exampleemail@gmail.com", phonenumb: "82364"),
            appstruct(appname: "WhatsApp", username: "Nothing", password: "3436kj9kh", email: "exampleemail@gmail.com", phonenumb: "82364"),
            appstruct(appname: "Facebook", username: "@noura90", password: "8Asd976235", email: "exampleemail@gmail.com", phonenumb: "82364"),
            appstruct(appname: "Discord", username: "@ghost", password: "ko223344", email: "exampleemail@gmail.com", phonenumb: "82364"),
            appstruct(appname: "Telegram", username: "@nourah676", password: "akjfgch87", email: "exampleemail@gmail.com", phonenumb: "82364")
        ]
    
   
    var body: some View {
        NavigationView {
            
                
           
                List{
                             ForEach(appstructArray) { app in
                                 NavigationLink(destination: DetailView2(username: app.username, password: app.password, email: app.email, phonenumb: app.phonenumb)) {
                                     
                                     Image(systemName: "apps.iphone")
                                         .foregroundColor(.black)
                                     Text(app.appname)
                                         .foregroundColor(.black)
                                         .font(.title2)
                                     Spacer()
                                         
                                 } .navigationTitle("Your Apps")
                                 .padding()
                                     
                             }
                    
                }
           
                
            
       }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
