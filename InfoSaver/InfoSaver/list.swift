//
//  list.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import Foundation
import SwiftUI


struct appstruct: Identifiable{
    let id = UUID()
    var appname: String
    var username: String
    var password: String
}


var Appslist = [
    "Instagram", "Snapchat", "Facebook", "8 ball pool", "WhatsApp"
]
