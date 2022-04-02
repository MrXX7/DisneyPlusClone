//
//  TabViewRouter.swift
//  DisneyPlus
//
//  Created by Oncu Ohancan on 2.04.2022.
//

import SwiftUI

class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

enum Page {
    case home
    case search
    case downloads
    case profile
}
