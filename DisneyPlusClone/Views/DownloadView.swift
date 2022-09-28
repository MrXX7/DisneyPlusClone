//
//  DownloadView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 26.09.2022.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Image("square.and.arrow.down.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                    .padding()
                    .background(Circle().stroke(Color.gray, lineWidth: 4))
                
                Text("You have no downloads")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Text("Movies and series you donwload will \nappear here.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
