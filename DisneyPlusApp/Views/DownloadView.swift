//
//  DownloadView.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 2.04.2022.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack{
            GradientBackgroundView()
            Text("Download View")
                .foregroundColor(Color.white)
    }
}
}
struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
