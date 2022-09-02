//
//  testpassView.swift
//  InfoSaver
//
//  Created by Noura on 02/09/2022.
//

import SwiftUI

struct testpassView: View {
    @State var password: String = ""
    @State var passwordStrength: Int = 0
    
    
    func chackStrength(_ password: String) -> Int {
        let passwordLength = password.count
        var containsSymbol = false
        var containUppercase = false
        var containNumbers = false
        
        for character in password {
            if "ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(character) {
                containUppercase = true
            }
            if "!@#$%^&*-()§;:=?_,.~`".contains(character) {
                containsSymbol = true
            }
            if "1234567890" .contains(character){
                containNumbers = true
            }
        }
            if passwordLength > 16 && containsSymbol && containUppercase && containNumbers {
                return 1
            } else {
                return 0
            }
    }
    var body: some View {
        ZStack {
            Color.theme.bg.ignoresSafeArea()
            ScrollView {
    //            Image("undraw_security_on_re_e491")
    //                .resizable()
    //                .scaledToFit()
    //                .padding()
                VStack{
                    
                Text("How strong is your password ?")
                    .font(.system(size: 23, weight: .bold, design: .serif))
                    .padding(.top, 80)
                TextField("Enter your password", text: $password).textFieldStyle(.roundedBorder).frame(width: 250)
                
                if chackStrength(password) == 0 {
                    Text("Weak").foregroundColor(Color.red).font(.system(size: 30)).padding()
                } else {
                    Text("Strong").foregroundColor(Color.green).font(.system(size: 30)).padding()
                    
                }
                } .frame(width: 400)
                
                VStack{
                    Rectangle()
                        .frame(width: 300, height: 1)
                    Text("How to create a secure password : ")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .padding()
                    securepass(name: "A password should be 16 characters or more")
                    Divider()
                    securepass(name:"    A password should include a combination of letters, numbers, and characters")
                    Divider()
                    securepass(name: "A password shouldn’t be shared with any other account")
                    
                    
                    
                    
                } .frame(width: 380, height: 430)
                
                
                //                    .background(Color.theme.buttton)
//                    .cornerRadius(40)
                
                
               
                
                
                
            }
        }
    }
}

struct testpassView_Previews: PreviewProvider {
    static var previews: some View {
        testpassView()
    }
}


//ellipsis.circle.fill

struct securepass: View {
    var name: String
    var body: some View {
        HStack{
            Image(systemName: "circle.fill")
                .foregroundColor(Color.theme.buttton.opacity(0.5))
            Spacer()
                
            Text(name).font(.system(size: 23, weight: .ultraLight, design: .rounded))
            Spacer()
            
        }
        .frame(width: 300)
        
        
    }
}
