//
//  OtherView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct OtherView: View {
    @State private var searchText: String = ""

    private var searchresult: [otherstruct] {
        let result = otherstructArray.all()
        if searchText.isEmpty { return result }
        return result.filter {
            $0.name.lowercased().contains(searchText.lowercased()) || $0.name.contains(searchText)
        }
    }
    var body: some View {
       // NavigationView {
            
                

          VStack {
              List{
                                 ForEach(searchresult) { other in
                                     
                                     HStack {
                                         NavigationLink(destination: otherDetailView(name: other.name, username: other.username, email: other.email, phonenumb: other.phonenumb, pass: other.pass)) {
                                             
                                             Text(other.name)
                                                 .foregroundColor(.black)
                                                 .font(.system(size: 22, weight: .medium, design: .default))
                                             
                                             Spacer()
                                             
//                                             Image(systemName: "folder.badge.person.crop")
//                                                 .foregroundColor(.black)
                                             
                                             
                                                 
                                         }.navigationTitle("Other")
                                             .padding()
                                             .searchable(text: $searchText)
                                
                                     }
                                         
                                 }
                    
                }
            
          }
       // }
    }
}

struct OtherstructView: View {
let Otherstruct: otherstruct

var body: some View{
    HStack {
        VStack(alignment: .leading) {
            Text("\(Otherstruct.name)")
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .medium, design: .default))
                
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
