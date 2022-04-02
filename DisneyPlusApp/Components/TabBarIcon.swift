//
//  TabBarIcon.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 2.04.2022.
//

import SwiftUI

struct TabBarIcon: View {
    @StateObject var tabViewRouter: TabViewRouter
    
    let currentpage: Page
    let width: CGFloat
    let height: CGFloat
    let systemIconName: String
    let tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(tabViewRouter.currentPage == currentpage ? .white : .gray)
        .padding(.horizontal, -4)
        .onTapGesture {
            tabViewRouter.currentPage = currentpage
        }
    }
}
