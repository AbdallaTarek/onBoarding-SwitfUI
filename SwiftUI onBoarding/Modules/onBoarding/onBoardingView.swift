//
//  onBoardingView.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import SwiftUI

struct onBoardingView: View {
    @StateObject private var viewModel = OnBoardingViewModel()
    @State var activeTab = 1

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(AppColors.shared.mainColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.1)
    }

    var body: some View {
        ZStack {
            TabView(selection: $activeTab) {
                ForEach(viewModel.onBoardingData, id: \.id) { item in
                    onBoardingItem(activeTab: $activeTab, isLast: $viewModel.isLastPage, item: item)
                }
            }
            .onChange(of: activeTab, perform: { _ in
                withAnimation {
                    viewModel.checkIfLast(id: activeTab)

                }
            })
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .onAppear { viewModel.load() }
    }
}

struct onBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingView()
    }
}
