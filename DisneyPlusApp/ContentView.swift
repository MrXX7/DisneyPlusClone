//
//  ContentView.swift
//  DisneyPlusApp
//
//  Created by Oncu Ohancan on 29.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                getTabPages()
                getTabIcons(geo: geo)
            }
        }
    }
    private func getTabPages() -> some View {
        switch tabViewRouter.currentPage {
        case .home:
            return AnyView(HomePage().frame(width: UIScreen.main.bounds.width))
//            return AnyView(HomePage())
//            return Color.orange
        case .search:
            return AnyView(SearchView())
        case .downloads:
            return AnyView(DownloadView())
        case .profile:
            return AnyView(ProfileView())
        }
    }
    private func getTabIcons(geo: GeometryProxy) -> some View {
        let width = geo.size.width / 4
        let heigth = geo.size.height / 56
        
       return HStack {
           TabBarIcon(tabViewRouter: tabViewRouter, currentpage: .home, width: width, height: heigth, systemIconName: "house", tabName: "Home")
           
           TabBarIcon(tabViewRouter: tabViewRouter, currentpage: .search, width: width, height: heigth, systemIconName: "magnifyingglass", tabName: "Search")
           TabBarIcon(tabViewRouter: tabViewRouter, currentpage: .downloads, width: width, height: heigth, systemIconName: "square.and.arrow.down.fill", tabName: "Downloads")
           TabBarIcon(tabViewRouter: tabViewRouter, currentpage: .profile, width: width, height: heigth, systemIconName: "person.circle", tabName: "Profile")
        }
       .frame(width: geo.size.width, height: 60)
       .padding(.bottom, 20)
       .background(ColorConstants.darkBluishGrayColor.shadow(radius: 2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: TabViewRouter())
    }
}
