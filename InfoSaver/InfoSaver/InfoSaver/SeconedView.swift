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
    @State private var username = ""
    @State private var presentThirdView = false
    @State var total = ""
    var body: some View {
        
        ZStack {
            Color.theme.buttton
                .ignoresSafeArea()
            
            Color.theme.bg
                .cornerRadius(48)
                .frame(width: 345, height: 650, alignment: .center)
                .position(x: 186, y: 290)
            
            Image("Safe")
                .resizable()
                .scaledToFit()
                .frame(width: 380, height: 200)
                .position(x: 190, y: 10)
                
            
            VStack {
                Text("Welcome back \(username) !")
                    .font(.system(size: 30, weight: .semibold, design: .serif))
                    .foregroundColor(Color.theme.buttton)
                    .padding()
                
                Text("For the security of your account, please enter your username and password")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .frame(width: 350, height: 100, alignment: .center)
                    .foregroundColor(.gray)
        
                Text(total)
                .foregroundColor(.red)
                
                TextField("username", text: $username)
                    .padding()
                    //.frame(width: 330, height: 30)
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .background(.gray.opacity(0.09))
                    .foregroundColor(.black)
                    .cornerRadius(5)
                
                SecureField("Password", text: $password)
                    .padding()
                   // .frame(width: 330, height: 30)
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .background(.gray.opacity(0.09))
                    .foregroundColor(.black)
                    .cornerRadius(5)
                
                    
                    

                    
                
                Button(action:{
                    if (password == "223344" && username == "Noura") {
                        presentThirdView.toggle()
                       
                    } else {
                      total  = "The username or password is incorrect"
                    }
                    
                }) {
                    
                    Text("Sign in")
                        .frame(width: 310, height: 35)
                        .background(Color.theme.buttton)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    
                } .sheet(isPresented: $presentThirdView) {
                    ThirdView()
                }
                
                HStack{
                Text("Don't have an account?")
                        .foregroundColor(.gray)
                NavigationLink(destination: SignupPage()) {
                  Text("Sign up")
                        .foregroundColor(Color.theme.buttton)
                }
                } .padding()
            } .frame(width: 320)
            // Vstack
        }

        
    }
    

    
        
}
    

struct SeconedView_Previews: PreviewProvider {
    static var previews: some View {
        SeconedView()
            .previewDevice("iPhone 11 Pro")
    }
}


