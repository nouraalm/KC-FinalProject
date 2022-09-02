//
//  gamesDetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct gamesDetailView: View {
    var gamename: String
    var username: String
    var email: String
    var pass: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct gamesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        gamesDetailView(gamename: "akjc", username: "aknc", email: "kancb", pass: "kanb")
    }
}
