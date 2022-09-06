//
//  ContentView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
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
                        
                    
                    Text("Manage all your presonal accounts In one place easily ...")
                        .font(.system(size: 20, weight: .ultraLight, design: .default))
                        .frame(width: 290, height: 100, alignment: .center)
                        .position(x: 150, y: -65)
                       
                    NavigationLink(destination: SeconedView()) {
                        HStack {
                            Text("Get started")
                                .font(.largeTitle)
                        Image(systemName: "paperplane")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                
                            
                        } .frame(width: 255, height: 35)
                            .padding()
                            .background(Color.theme.buttton)
                    
                            .foregroundColor(.white)
                            .cornerRadius(40)
                        
                            .padding(.bottom,10)
                         .position(x: 195, y: 20)
                            
                    }

                    .navigationBarHidden(true)
                } .accentColor(.white)
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
