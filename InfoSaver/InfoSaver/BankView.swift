//
//  BankView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct BankView: View {
    @State private var searchText: String = ""

    private var searchresult: [bankstruct] {
        let result = bankstructArray.all()
        if searchText.isEmpty { return result }
        return result.filter {
            $0.bankname.lowercased().contains(searchText.lowercased()) || $0.bankname.contains(searchText)
        }
    }
    var body: some View {
        
        //NavigationView{
        VStack {
            List{
        ForEach(searchresult) { bank in
        NavigationLink(destination: bankDetailView(bankname: bank.bankname, cardnumber: bank.cardnumber, password: bank.password)) {
            
            Text(bank.bankname)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .medium, design: .default))
            
                //.padding()
            Spacer()
            Image(systemName: "wallet.pass.fill")
            
        } .navigationBarTitle("Bank")
                .padding()
                .searchable(text: $searchText)
            
            
            
            
            
        }
        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
            Button("Delete"){
                
            }
            .tint(.red)
            Button("Favourite"){
                
            }
            .tint(.green)
}
        .swipeActions(edge: .leading, allowsFullSwipe: true) {
            Button("Pin"){
                
            }
            .tint(.orange)
        }
    }
    }
    //}
    }
      }

struct banksDetailView: View {
    let Banktruct: bankstruct
    
    var body: some View{
        HStack {
            VStack(alignment: .leading) {
                Text("\(Banktruct.bankname)")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .medium, design: .default))
                    
                Spacer()
            }
            Spacer()
        } .padding([.leading, .trailing], 24)
    }
}


struct BankView_Previews: PreviewProvider {
    static var previews: some View {
        BankView()
    }
}
