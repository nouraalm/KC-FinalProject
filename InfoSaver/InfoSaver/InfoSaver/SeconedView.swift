//
//  SeconedView.swift
//  InfoSaver
//
//  Created by Noura on 28/08/2022.
//
import ActionButton
import Combine
import SwiftUI



struct SeconedView: View {
    @State private var password = ""
    @State private var presentThirdView = false
    
    var body: some View {
        
        ZStack {
            Color.theme.buttton
                .ignoresSafeArea()
            
            Color.white
                .cornerRadius(48)
                .frame(width: 345, height: 650, alignment: .center)
                .position(x: 186, y: 290)
            
            Image("Safe")
                .resizable()
                .scaledToFit()
                .frame(width: 380, height: 200)
                .position(x: 190, y: 10)
                
            
            VStack{
                Text("Enter your Password")
                    .font(.system(size: 30, weight: .bold, design: .serif))
                
                Text("For the security of your account, please enter your password")
                    .padding(.bottom,30)
                    .frame(width: 300, height: 80)
                    .foregroundColor(.gray)
                
                
                
                SecureField("Enter Password", text: $password)
                    .padding()
                    .frame(width: 360, height: 30)
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .background(.gray.opacity(0.09))
                    .foregroundColor(.black)
                    
                    
                    
                
                Button(action:{
                    if (password == "223344") {
                        presentThirdView.toggle()
                    }
                    
                }){
                    Text("Sign In")
                        .frame(width: 310, height: 35)
                        .background(Color.theme.buttton)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    
                } .sheet(isPresented: $presentThirdView) {
                    ThirdView()
                }
            }
        }

        
    }
    

    
        
}
    

struct SeconedView_Previews: PreviewProvider {
    static var previews: some View {
        SeconedView()
            .previewDevice("iPhone 11 Pro")
    }
}


