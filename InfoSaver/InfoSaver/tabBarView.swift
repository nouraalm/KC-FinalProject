//
//  tabBarView.swift
//  InfoSaver
//
//  Created by Noura on 02/09/2022.
//

import SwiftUI

struct tabBarView: View {
    var body: some View {
        ZStack{
            TabView {
                choosepage()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                              Text("Profile")
                    }
            }
            

        }
        
    }
}

struct tabBarView_Previews: PreviewProvider {
    static var previews: some View {
        tabBarView()
    }
}


