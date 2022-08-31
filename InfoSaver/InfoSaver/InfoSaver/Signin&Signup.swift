//
//  Signin&Signup.swift
//  InfoSaver
//
//  Created by Noura on 31/08/2022.
//

import SwiftUI

struct Signin_Signup: View {
    var body: some View {
        
        
        
        NavigationView {
        VStack {
                        NavigationLink(destination: SeconedView()) {
                            Text("Signin")
                                .frame(width: 310, height: 35)
                                .background(Color.theme.buttton)
                                .cornerRadius(20)
                                .foregroundColor(.white)


                        }
                    NavigationLink(destination: SignupPage()) {
                            Text("Signup")
                                .frame(width: 310, height: 35)
                                .background(Color.theme.buttton)
                                .cornerRadius(20)
                            .foregroundColor(.white)
                    }
                
                    
                    

             
            
            }
        }
        
            }
}

struct Signin_Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signin_Signup()
    }
}
