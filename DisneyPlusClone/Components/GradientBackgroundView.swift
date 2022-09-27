//
//  GradientBackgroundView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 27.09.2022.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ColorConstants.darkGrayColor, ColorConstants.darkBluishGrayColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
