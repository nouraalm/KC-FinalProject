//
//  BankView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct BankView: View {
    @State private var searchText: String = ""

    @State var bankstructArray = [
        //    static func all() -> [bankstruct] {
        //        return [
                    bankstruct(bankname: "Bobuyan Bank", cardnumber: "8376599177319", password: "2452"),
                    bankstruct(bankname: "National Bank", cardnumber: "29671391432", password: "l682"),
                    bankstruct(bankname: "Al Ahli Bank", cardnumber: "98655689546", password: "2457"),
                    bankstruct(bankname: "Industrial Bank", cardnumber: "2098490211", password: "3972"),
                    bankstruct(bankname: "NBK - National Bank", cardnumber: "876290170", password: "8569"),
                    //bankstruct(bankname: "Gulf Bank", cardnumber: "86289172840", password: "7272"),
                    bankstruct(bankname: "KFH - Kuwait Finance House", cardnumber: "8320894022", password: "75829")
            
        //        ]
        //    }
        ]
//    private var searchresult: [bankstruct] {
//        let result = bankstructArray.all()
//        if searchText.isEmpty { return result }
//        return result.filter {
//            $0.bankname.lowercased().contains(searchText.lowercased()) || $0.bankname.contains(searchText)
//        }
//    }
    var body: some View {
        
        //NavigationView{
        VStack {
            List{
        ForEach(bankstructArray) { bank in
        NavigationLink(destination: bankDetailView(bankname: bank.bankname, cardnumber: bank.cardnumber, password: bank.password)) {
            
            Text(bank.bankname)
                //.foregroundColor(.black)
                .font(.system(size: 22, weight: .medium, design: .default))
            
                //.padding()
            Spacer()
            Image(systemName: "creditcard.fill")
            
        } .navigationBarTitle("Credit Card")
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
    } .navigationBarItems(trailing:
                            
                            Button("Add") {
                                print("Add new Item")
                bankstructArray.append(bankstruct(bankname: "Gulf Bank", cardnumber: "86289172840", password: "7272"))
                            }
                    .tint(.green)
                        
                    )
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
