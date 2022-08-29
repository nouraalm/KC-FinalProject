//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 29/08/2022.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            Text("Thrid Screen")
                .font(.largeTitle)
        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
