//
//  HomePage.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 2.04.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            GradientBackgroundView()
            Text("Home View")
                .foregroundColor(Color.white)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
