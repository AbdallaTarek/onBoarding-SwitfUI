//
//  onBoardingItem.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import SwiftUI

struct onBoardingItem: View {
    @Binding var activeTab: Int
    @Binding var isLast: Bool

    var item: OnboardingItemModel
    var body: some View {
        VStack(alignment: .center) {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(1, contentMode: .fit)
                .cornerRadius(20)
                .padding(24)

            VStack(spacing: 16) {
                Text(item.title)
                    .font(.system(size: 27, weight: .bold))
                    .foregroundColor(AppColors.shared.mainFontColor)

                Text(item.description)
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(AppColors.shared.mainFontColor)
            }

            if isLast {
                MainButton(title: "LOGIN NOW")
            }
        }
        .padding()
    }
}
