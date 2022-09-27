//
//  HomePage.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 26.09.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Home View")
                .foregroundColor(.white)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
