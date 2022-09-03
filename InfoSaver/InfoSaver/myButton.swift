//
//  myButton.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import Foundation
import SwiftUI

struct myButton: View {
    @State var name: String
    var body: some View {
        Text(name)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding()
            .background(Color.theme.buttton)
            .cornerRadius(20)
    }
}
