//
//  SwiftUI_onBoardingApp.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import SwiftUI

@main
struct SwiftUI_onBoardingApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashView()
            }
            .environment(\.colorScheme, .light)
        }
    }
}
