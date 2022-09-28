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
            ScrollView {
                VStack {
                    LogoHeaderView()
                        .frame(maxWidth: 100)
                        .padding(.top, 40)
                    
                    CarouselView()
                    ChannelView()
                        .frame(width: UIScreen.main.bounds.width)
                    }
                }
            }
        }
    }

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
