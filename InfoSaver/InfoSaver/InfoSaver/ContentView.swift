//
//  ContentView.swift
//  InfoSaver
//
//  Created by Noura on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.theme.bg.ignoresSafeArea()
                VStack{
                Image("undraw_social_girl_re_kdrx")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 390, height: 500)
                    
                    Spacer()
                    Text("Managed all acount")
                        .font(.system(size: 35, weight: .bold, design: .serif))
                        .position(x: 190, y: -40)
                        
                    
                    Text("Manage all your presonal accounts In one place easily ")
                        
                        .frame(width: 280, height: 100, alignment: .center)
                        .position(x: 190, y: -65)
                       
                    
                    NavigationLink(destination: SeconedView()) {
                        myButton(name: "Get started")
                            .position(x: 185, y: -15)
                            
                            
                    }

                    .navigationBarHidden(true)
            }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro")
            ContentView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}





