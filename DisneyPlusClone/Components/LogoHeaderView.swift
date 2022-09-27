//
//  LogoHeaderView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 27.09.2022.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            LogoHeaderView()
        }
    }
}
