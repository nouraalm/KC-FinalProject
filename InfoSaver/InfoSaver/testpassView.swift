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
        ScrollView {
            Image("undraw_security_on_re_e491")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("How strong is your password ?")
                .font(.title2)
                .padding()
            TextField("Enter your password", text: $password).textFieldStyle(.roundedBorder).frame(width: 250)
            
            if chackStrength(password) == 0 {
                Text("Weak").foregroundColor(Color.red).font(.system(size: 30)).padding()
            } else {
                Text("Strong").foregroundColor(Color.green).font(.system(size: 30)).padding()
            }
            Text("How to create a secure password : ")
                .font(.largeTitle)
                .padding()
            
            VStack{
               
                securepass(name: "A password should be 16 characters or more")
                Divider()
                securepass(name:"    A password should include a combination of letters, numbers, and characters")
                Divider()
                securepass(name: "A password shouldn’t be shared with any other account")
                Divider()
                
                
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
                .foregroundColor(Color.theme.buttton)
            Spacer()
                
            Text(name)
                .font(.title2)
            
            
        }
        .frame(width: 300)
    }
}
