//
//  Profile.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 3.04.2022.
//

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    var name: String
    var avatar: String
    var backColor: Color
}

extension Profile {
    static var sampleProfiles: [Profile] {
        return [
            Profile(name: "Bee", avatar: "🐝", backColor: .pink),
            Profile(name: "Lion", avatar: "🦁", backColor: .yellow),
            Profile(name: "Snake", avatar: "🐍", backColor: .brown),
            Profile(name: "Eagle", avatar: "🦅", backColor: .gray),
            Profile(name: "Own", avatar: "🦉", backColor: .white)
        ]
    }
}
