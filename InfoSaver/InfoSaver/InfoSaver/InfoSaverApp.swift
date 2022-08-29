//
//  InfoSaverApp.swift
//  InfoSaver
//
//  Created by Noura on 27/08/2022.
//

import SwiftUI
import Firebase
@main 
struct InfoSaverApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
