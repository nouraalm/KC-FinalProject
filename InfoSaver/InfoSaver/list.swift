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
    var email: String
    var phonenumb: String
}

public struct appstructArray {
    static func all() -> [appstruct] {
        
        return [
   appstruct(appname: "Instagram", username: "@noura", password: "1234jt7g", email: "kajs", phonenumb: "82364"),
   appstruct(appname: "Snapchat", username: "@noura7", password: "456kjh8", email: "kajs", phonenumb: "82364"),
   appstruct(appname: "TikTok", username: "@nosh", password: "234iuy8h", email: "kajs", phonenumb: "82364"),
   appstruct(appname: "YouTube", username: "@noura almethin", password: "7890087j", email: "exampleemail@gmail.com", phonenumb: "82364"),
   appstruct(appname: "WhatsApp", username: "Nothing", password: "3436kj9kh", email: "exampleemail@gmail.com", phonenumb: "82364"),
   appstruct(appname: "Facebook", username: "@noura90", password: "8Asd976235", email: "exampleemail@gmail.com", phonenumb: "82364"),
   appstruct(appname: "Discord", username: "@ghost", password: "ko223344", email: "exampleemail@gmail.com", phonenumb: "82364"),
   appstruct(appname: "Telegram", username: "@nourah676", password: "akjfgch87", email: "exampleemail@gmail.com", phonenumb: "82364")
]
    }
}



struct bankstruct: Identifiable{
    let id = UUID()
    var bankname: String
    var cardnumber: String
    var password: String
}

public struct bankstructArray {
    static func all() -> [bankstruct] {
        return [
            bankstruct(bankname: "Bobuyan Bank", cardnumber: "8376599177319", password: "2452"),
            bankstruct(bankname: "National Bank", cardnumber: "29671391432", password: "l682"),
            bankstruct(bankname: "Al Ahli Bank", cardnumber: "98655689546", password: "2457"),
            bankstruct(bankname: "Industrial Bank", cardnumber: "2098490211", password: "3972"),
            bankstruct(bankname: "NBK - National Bank", cardnumber: "876290170", password: "8569"),
            bankstruct(bankname: "Gulf Bank", cardnumber: "86289172840", password: "7272"),
            bankstruct(bankname: "KFH - Kuwait Finance House", cardnumber: "8320894022", password: "75829")
    
        ]
    }
}


struct gamestruct: Identifiable{
    let id = UUID()
    var gamename: String
    var username: String
    var email: String
    var pass: String
}

public struct gamestructArray {
    static func all() -> [gamestruct]{
        return[
            gamestruct(gamename: "Steam", username: "@noura93", email: "exampleemail@gmail.com", pass: "Cfha87078"),
            gamestruct(gamename: "Epic", username: "@no987", email: "exampleemail@gmail.com", pass: "Bhja78987"),
            gamestruct(gamename: "Little nightmare", username: "nourah67", email: "exampleemail@gmail.com", pass: "Nkahgh890"),
            gamestruct(gamename: "Jump Force", username: "none97", email: "exampleemail@gmail.com", pass: "Auhaj8790"),
            gamestruct(gamename: "Fortnite", username: "nosh29", email: "exampleemail@gmail.com", pass: "Jiagi9768"),
            gamestruct(gamename: "Resident Evil2", username: "n676_", email: "exampleemail@gmail.com", pass: "Njha9877"),
            gamestruct(gamename: "Dead by Daylight", username: "nourah22", email: "exampleemail@gmail.com", pass: "Nk98790")
            
        ]
    }
}





struct otherstruct: Identifiable {
    let id = UUID()
    var name: String
    var username: String
    var email: String
    var phonenumb: String
    var pass: String
}


public struct otherstructArray{
    static func all() -> [otherstruct]{
    return [
    otherstruct(name: "exampleone1", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98687382", pass: "Hh9870900"),
    otherstruct(name: "exampleone2", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98367820", pass: "Aa238865"),
    otherstruct(name: "exampleone3", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "0982098"),
    otherstruct(name: "exampleone4", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "ksjnc9"),
    otherstruct(name: "exampleone5", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "Ghk8800"),
    otherstruct(name: "exampleone6", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "98368267", pass: "^766767gg"),
    otherstruct(name: "exampleone7", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "97536283", pass: "Hkha678098"),
    otherstruct(name: "exampleone8", username: "@exampleone", email: "exampleemail@gmail.com", phonenumb: "-", pass: "Jj876545")
    
    ]
    }
}
