//
//  bankDetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct bankDetailView: View {
    var bankname: String
    var cardnumber: String
    var password: String
    var body: some View {
        Form{
            
            Section(header: Text("Bank name:")) {
                Text(bankname)
            }
          
            Section(header: Text("Card number:")){
                Text(cardnumber)
                
            }
            
            Section(header: Text("your password:")){
                Text(password)
            }
            
                    }
    }
}

struct bankDetailView_Previews: PreviewProvider {
    static var previews: some View {
        bankDetailView(bankname: "ajsn", cardnumber: "ksn", password: "an")
    }
}
