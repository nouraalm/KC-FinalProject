//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct ThirdView: View {
    var apps = Appslist
    @State var appstructArray = [
            appstruct(appname: "Instagram", username: "Noura", password: "1234"),
            appstruct(appname: "Snapchat", username: "noura7", password: "456")
        ]
    var body: some View {
        NavigationView {
             List{
                     ForEach(appstructArray) { app in
                         NavigationLink(destination: DetailView2(username: app.username, password: app.password)) {
                             Image(systemName: "apps.iphone")
                             Text(app.appname)
                         } .padding()
                     }
                     .navigationTitle("Your Apps")
             }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
