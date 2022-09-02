//
//  GamesView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct GamesView: View {
    @State private var searchText: String = ""

    private var searchresult: [gamestruct] {
        let result = gamestructArray.all()
        if searchText.isEmpty { return result }
        return result.filter {
            $0.gamename.lowercased().contains(searchText.lowercased()) || $0.gamename.contains(searchText)
        }
    }

    var body: some View {
    //    NavigationView {
            
                

          VStack {
              List{
                                 ForEach(searchresult) { game in
                                     
                                     HStack {
                                         NavigationLink(destination: gamesDetailView(gamename: game.gamename, username: game.username, email: game.email, pass: game.pass)) {
                                             
                                             Text(game.gamename)
                                                 .foregroundColor(.black)
                                                 .font(.system(size: 22, weight: .medium, design: .default))
                                             
                                             Spacer()
                                             
//                                             Image(systemName: "folder.badge.person.crop")
//                                                 .foregroundColor(.black)
                                             
                                             
                                                 
                                         }.navigationTitle("Games")
                                             .padding()
                                             .searchable(text: $searchText)
                                
                                     }
                                         
                                 }
                    
                }
            
          }
       // }
    }
}

struct GamesDetailView: View {
    let Gamestruct: gamestruct
    
    var body: some View{
        HStack {
            VStack(alignment: .leading) {
                Text("\(Gamestruct.gamename)")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .medium, design: .default))
                    
                Spacer()
            }
            Spacer()
        } .padding([.leading, .trailing], 24)
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
