//
//  DetailView.swift
//  InfoSaver
//
//  Created by Noura on 30/08/2022.
//

import SwiftUI

struct DetailView: View {
    @State var text: String = UserDefaults.standard.string(forKey: "Key") ?? ""
    @State var inputText: String = ""
    @State var textP: String = UserDefaults.standard.string(forKey: "Keyp") ?? ""
    @State var inputTextp: String = ""
    @State var password: String = ""
    var body: some View {
       
            
            Form{
                
                Section(header: Text("Your Username:")) {
                    TextField("Enter your username", text: $inputText)
                     }
                
                
                Section(header: Text("Actions:")){
                    Button("Save Data")
                         {
                        UserDefaults.standard.set(inputText, forKey: "Key")
                        text = inputText
                             
                        print("Saved value: \(inputText)")
                    }
                }
                
                
                Section(header: Text("Saved Data")) {
                    Text(text).lineLimit(3)
                } //username
                
                ///
                ///
                ///
                ///
                
                
                Section(header: Text("Your Password:")){
                    TextField("Enter your password", text: $inputTextp)
                }
                
                Section(header: Text("Actions:")) {
                    Button("Saved Data")
                    {
                        UserDefaults.standard.set(inputTextp, forKey: "Keyp")
                        textP = inputTextp
                        print("Saved value: \(inputTextp)")
                    }
                    
                                    }
                Section(header: Text("Saved Data")){
                    Text(textP).lineLimit(3)
                } //password

            }  //form
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
