//
//  SignupPage.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct SignupPage: View {
    @State var name = ""
    @State var email = ""
    @State var pass = ""
    var body: some View {
        ZStack{
            Color.theme.buttton
                .ignoresSafeArea()
            
            Color.theme.bg
                .cornerRadius(48)
                .frame(width: 345, height: 650, alignment: .center)
                .position(x: 186, y: 285)
            
            VStack(spacing: 20){
                Text("Create an account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Hello \(name) !")
                    .font(.title)
                
                TextField("Name", text: $name)
                    .padding()
                    .background(.ultraThickMaterial)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(.ultraThickMaterial)
                
                SecureField("Password", text: $pass)
                    .padding()
                    .background(.ultraThickMaterial)
                
                NavigationLink(destination: choosepage()) {
                    Text("Sign up")
                        .frame(width: 310, height: 35)
                        .background(Color.theme.buttton)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                } //.navigationBarHidden(true)
            } .frame(width: 320)
            
            
            }
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
