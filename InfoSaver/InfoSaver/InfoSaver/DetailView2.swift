//
//  DetailView2.swift
//  InfoSaver
//
//  Created by Noura on 31/08/2022.
//

import SwiftUI

//
//  DetailView.swift
//  InfoSaver
//
//  Created by Noura on 30/08/2022.
//


struct DetailView2: View {
     var text: String
    @State var username: String = ""
    @State var textP: String = ""
    @State var password: String = ""
    
    var body: some View {
       
            
            Form{
                
                Section(header: Text("Your Username:")) {
                    TextField("Enter your username", text: $username)
                     }
                
                
                Section(header: Text("Actions:")){
                    Button("Save Data")
                         {
                        UserDefaults.standard.set(username, forKey: "Key")
                        //text = username
                             
                        print("Saved value: \(username)")
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
                    TextField("Enter your password", text: $password)
                }
                
                Section(header: Text("Actions:")) {
                    Button("Saved Data")
                    {
                        UserDefaults.standard.set(password, forKey: "Keyp")
                        textP = password
                        print("Saved value: \(password)")
                    }
                    
                                    }
                Section(header: Text("Saved Data")){
                    Text(textP).lineLimit(3)
                } //password

            }  //form
        
    }
}

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2(text: "noura")
    }
}

