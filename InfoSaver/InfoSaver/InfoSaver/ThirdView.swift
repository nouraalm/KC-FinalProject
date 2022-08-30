//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 29/08/2022.
//

import SwiftUI

struct ThirdView: View {
var apps = Appslist
    var body: some View {
        
        NavigationView {
            List{
                ForEach(apps, id:\.self) { app in
                    NavigationLink(destination: DetailView()) {
                        Image(systemName: "apps.iphone")
                        Text(app)
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


