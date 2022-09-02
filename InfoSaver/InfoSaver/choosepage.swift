//
//  choosepage.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct choosepage: View {
    var body: some View {
       
            NavigationView {
                ZStack{
                   
                        
                    ScrollView(.horizontal){
                        
                       // VStack{
                        
                        HStack {
                            NavigationLink(destination: ThirdView()) {
                                buttonname(name: "Apps", image: "Apps-2")
                            }
                        
                 
                    NavigationLink(destination: BankView()) {
                        buttonname(name: "Bank", image: "wallet")
                    }
                    
                    NavigationLink(destination: GamesView()) {
                        buttonname(name: "Games", image: "games")
                    }
                    
                    
                    NavigationLink(destination: OtherView()) {
                        buttonname(name: "Other", image: "other")
                    }
                    
                    
                    
                    } .padding()
                    } .position(x: 200, y: 150)
                    
                    VStack{
                        Rectangle()
                           
                            .frame(width: 340, height: 1, alignment: .center)
                            .position(x: 190, y: 400)
                        Spacer()
                        Text("It is important to choose passwords wisely. Check how strong and secure is your password. Improve the strength of your password to stay safe..")
                            .foregroundColor(.black)
                            .padding()
                    
                    NavigationLink(destination: testpassView()) {
                        
                        
                        Text("Test your password")
                            
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Color("purple"))
                            .cornerRadius(20)
                            .padding()
                        Spacer()
                            
                            
                        }
                    }
        }
            }
    }
}

struct choosepage_Previews: PreviewProvider {
    static var previews: some View {
        choosepage()
    }
}

struct buttonname: View {
    var name: String
    var image: String
    var body: some View {
        ZStack {
            
            
            Color.theme.buttton
                .frame(width: 270, height: 180)
            
            .cornerRadius(20)
        
        Image(image)
               
                .resizable()
                .scaledToFit()
                .cornerRadius(0)
                .frame(width: 300, height: 80)
               // .opacity(0.7)
                .position(x: 150, y: 280)
            
                
            Text(name)
                .foregroundColor(.black)
               
                .padding()
                
                .frame(width: 270, height: 58)
                .background(.ultraThinMaterial)
                .font(.system(size: 40, weight: .bold, design: .monospaced))
                .cornerRadius(20)
                .position(x: 150, y: 363)
                
                
            
            
            
        }
            
    }
}
