//
//  OtherView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct OtherView: View {
    @State private var searchText: String = ""

    @State var otherstructArray = [
        //    static func all() -> [otherstruct]{
        //    return [
            otherstruct(name: "exampleone1", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98687382", pass: "Hh9870900"),
            otherstruct(name: "exampleone2", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98367820", pass: "Aa238865"),
            otherstruct(name: "exampleone3", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "0982098"),
            otherstruct(name: "exampleone4", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "ksjnc9"),
            otherstruct(name: "exampleone5", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "Ghk8800"),
            otherstruct(name: "exampleone6", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98368267", pass: "^766767gg"),
            otherstruct(name: "exampleone7", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "97536283", pass: "Hkha678098"),
            otherstruct(name: "exampleone8", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "Jj876545")
            
        //    ]
        //    }
        ]
//    private var searchresult: [otherstruct] {
//        let result = otherstructArray.all()
//        if searchText.isEmpty { return result }
//        return result.filter {
//            $0.name.lowercased().contains(searchText.lowercased()) || $0.name.contains(searchText)
//        }
//    }
    var body: some View {
       // NavigationView {
            
                

          VStack {
              List{
                                 ForEach(otherstructArray) { other in
                                     
                                     HStack {
                                         NavigationLink(destination: otherDetailView(name: other.name, username: other.username, email: other.email, phonenumb: other.phonenumb, pass: other.pass)) {
                                             
                                             Text(other.name)
                                                // .foregroundColor(.black)
                                                 .font(.system(size: 22, weight: .medium, design: .default))
                                                 .frame(width: 150)

                                             
                                             Spacer()
                                             
                                             Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                                 //.foregroundColor(.black)
                                             
                                                 .navigationTitle("Other")
                                                 
                                         }
                                             .padding()
                                             .searchable(text: $searchText)
                                
                                     }
                                         
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
                        otherstructArray.append(otherstruct(name: "", username: "", email: "", phonenumb: "", pass: ""))
                                    }
                            .tint(.green)
                                
                            )

       // }
    }
}

struct OtherstructView: View {
let Otherstruct: otherstruct

var body: some View{
    HStack {
        VStack(alignment: .leading) {
            Text("\(Otherstruct.name)")
                //.foregroundColor(.black)
                .font(.system(size: 22, weight: .medium, design: .default))
                .frame(width: 300)
            Spacer()
        }
        Spacer()
    } .padding([.leading, .trailing], 24)
}
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
