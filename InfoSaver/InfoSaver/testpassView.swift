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
        
        for character in password {
            if "ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(character) {
                containUppercase = true
            }
            if "!@#$%^&*()_&^%%#@()_-&%".contains(character) {
                containsSymbol = true
            }
        }
            if passwordLength > 8 && containsSymbol && containUppercase {
                return 1
            } else {
                return 0
            }
    }
    var body: some View {
        VStack {
            Text("How strong is your password")
                .padding()
            TextField("Enter your password", text: $password).textFieldStyle(.roundedBorder).frame(width: 250)
            
            if chackStrength(password) == 0 {
                Text("Weak").foregroundColor(Color.red).font(.system(size: 30)).padding()
            } else {
                Text("Strong").foregroundColor(Color.green).font(.system(size: 30)).padding()
            }
        }
    }
}

struct testpassView_Previews: PreviewProvider {
    static var previews: some View {
        testpassView()
    }
}
