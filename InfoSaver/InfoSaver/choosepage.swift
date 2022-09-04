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


                    Color.theme.bg.ignoresSafeArea()
                        
                    ScrollView(.horizontal){
                        
                       // VStack{
                        
                        HStack {
                            NavigationLink(destination: ThirdView()) {
                                buttonname(name: "Apps", image: "Apps-2")
                            } //.navigationBarHidden(true)
                        
                 
                    NavigationLink(destination: BankView()) {
                        buttonname(name: "Credit Card", image: "CreditCard1")
                    } //.navigationBarHidden(true)
                    
                    NavigationLink(destination: GamesView()) {
                        buttonname(name: "Games", image: "games")
                    } //.navigationBarHidden(true)
                    
                    
                    NavigationLink(destination: OtherView()) {
                        buttonname(name: "Other", image: "other")
                    } //.navigationBarHidden(true)
                    
                    
                    
                        
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
                        
                        
                        Text("How Strong Is My Password ?")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 290, height: 50)
                            .background(Color("purple"))
                            .cornerRadius(20)
                            .padding()
                        Spacer()
                            
                            
                        }
                    }
                    .navigationBarHidden(true)
       


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
                .position(x: 150, y: 302)
            
                
            Text(name)
                .foregroundColor(.white)
               
                .padding()
                
                .frame(width: 270, height: 58)
                .background(.black .opacity(0.3))
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .cornerRadius(20)
                .position(x: 150, y: 380)
                
                
            
            
            
        }
            
    }
}
