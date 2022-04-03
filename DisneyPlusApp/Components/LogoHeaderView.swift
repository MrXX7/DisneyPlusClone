//
//  LogoHeaderView.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 3.04.2022.
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
