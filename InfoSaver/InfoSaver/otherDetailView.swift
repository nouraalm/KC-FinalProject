//
//  otherDetailView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct otherDetailView: View {
    var name: String
    var username: String
    var email: String
    var phonenumb: String
    var pass: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct otherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        otherDetailView(name: "akb", username: "kabsd", email: "akbc", phonenumb: "kajnc", pass: "kajbnc")
    }
}
