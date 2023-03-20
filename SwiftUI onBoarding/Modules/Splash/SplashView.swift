//
//  ContentView.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import SwiftUI

struct SplashView: View {
    private let animationName = "92320-splash"
    @State private var isAnimationFinished: Bool = false
    var body: some View {
        if isAnimationFinished {
            onBoardingView()
        } else {
            ZStack {
                LottieView(animationName: animationName, loopMode: .playOnce, contentMode: .scaleToFill) { isAnimationFinished = true }
            }
            .ignoresSafeArea(.container, edges: .all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
