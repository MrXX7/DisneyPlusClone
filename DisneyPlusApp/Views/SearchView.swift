//
//  SearchView.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 2.04.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack{
            GradientBackgroundView()
            Text("Search View")
                .foregroundColor(Color.white)
    }
}
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
