//
//  SeconedView.swift
//  InfoSaver
//
//  Created by Noura on 28/08/2022.
//

import SwiftUI
import Firebase 
struct SeconedView: View {
    @State private var email = ""
    @State var password = ""
    
    var body: some View {
        
       
            ZStack{
                    Color.theme.buttton
                        .ignoresSafeArea()
                        .cornerRadius(55)
                        .frame(width: 380, height: 410)
                        .position(x: 190, y: -43)
                    
                    Image("WelcomeCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 330, height: 200)
                        .position(x: 190, y: 20)
                    
                    VStack{
                        TextField("Email", text: $email)
                            .placeholder(when: email.isEmpty) {
                                Text("Email")
                                    
                                    .foregroundColor(.white)
                                    
                             }
                        Rectangle()
                            .frame(width: 350, height: 1)
                          
                        SecureField("Password", text: $password)
                            .placeholder(when: password.isEmpty) {
                                Text("Password")
                                    .foregroundColor(.white)
                            }
                        Rectangle()
                            .frame(width: 350, height: 1)
                        
                        Button {
                            //sign up
                        } label: {
                            Text("Sign Up")
                                .bold()
                                .frame(width: 300, height: 40)
                                .background(Color.theme.buttton)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }
                        .padding(.top)
                            .offset(y: 100)
                        
                        Button {
                            //log In
                        } label: {
                            Text("Already have an account? Login")
                                .bold()
                                
                        } .padding(.top)
                            .offset(y: 110)

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

extension View{
func placeholder<Content: View>(
      when shouldShow: Bool,
      alignment: Alignment = .leading,
      @ViewBuilder placeholder: () -> Content) -> some View {

      ZStack(alignment: alignment) {
          placeholder().opacity(shouldShow ? 1 : 0)
          self
      }
  }
}
