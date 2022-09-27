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
            Text("DownloadView")
                .foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
