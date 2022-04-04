//
//  ProfilePic.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 4.04.2022.
//

import SwiftUI

struct ProfilePic: View {
    var profile: Profile
    var body: some View {
        
        VStack{
            Text(profile.avatar)
                .font(.system(size: 80))
                .padding()
                .background(
                    RadialGradient(gradient: Gradient(colors: [profile.backColor, .white]), center: .center, startRadius: 10, endRadius: 100).clipShape(Circle()))
                .shadow(color: ColorConstants.darkBluishGrayColor, radius: 5, x: 5, y: 5)
                .shadow(color: ColorConstants.darkBluishGrayColor, radius: 5, x: -5, y: -5)
            Text(profile.name)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ProfilePic(profile: Profile(name: "Panda", avatar: "🐼", backColor: Color.yellow))
    }
}
}
