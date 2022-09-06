//
//  GamesView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct GamesView: View {
    @State private var searchText: String = ""
@State var gamestructArray = [
    //    static func all() -> [gamestruct]{
    //        return[
                gamestruct(gamename: "Steam", username: "@noura93", email: "exampleemail@gmail.com", pass: "Cfha87078"),
                gamestruct(gamename: "Epic", username: "@no987", email: "exampleemail@gmail.com", pass: "Bhja78987"),
                gamestruct(gamename: "Little nightmare", username: "nourah67", email: "exampleemail@gmail.com", pass: "Nkahgh890"),
                gamestruct(gamename: "Jump Force", username: "none97", email: "exampleemail@gmail.com", pass: "Auhaj8790"),
                gamestruct(gamename: "Fortnite", username: "nosh29", email: "exampleemail@gmail.com", pass: "Jiagi9768"),
                gamestruct(gamename: "Resident Evil2", username: "n676_", email: "exampleemail@gmail.com", pass: "Njha9877"),
                gamestruct(gamename: "Dead by Daylight", username: "nourah22", email: "exampleemail@gmail.com", pass: "Nk98790")
                
    //        ]
    //    }
    ]

//    private var searchresult: [gamestruct] {
//        let result = gamestructArray.all()
//        if searchText.isEmpty { return result }
//        return result.filter {
//            $0.gamename.lowercased().contains(searchText.lowercased()) || $0.gamename.contains(searchText)
//        }
//    }

    var body: some View {
    //    NavigationView {
            
                

          VStack {
              List{
                                 ForEach(gamestructArray) { game in
                                     
                                     HStack {
                                         NavigationLink(destination: gamesDetailView(gamename: game.gamename, username: game.username, email: game.email, pass: game.pass)) {
                                             
                                             Text(game.gamename)
                                                 //.foregroundColor(.black)
                                                 .font(.system(size: 22, weight: .medium, design: .default))
                                             
                                             Spacer()
                                             
                                             Image(systemName: "gamecontroller.fill")
                                                // .foregroundColor(.black)
                                             
                                             
                                                 
                                         }.navigationTitle("Games")
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
                        gamestructArray.append(gamestruct(gamename: "WarZone", username: "@nosh67", email: "exampleemail@gmail.com", pass: "24854456sd#"))
                                    }
                            .tint(.green)
                                
                            )
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
