//
//  onBoardingViewModel.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import Combine
import Foundation

class OnBoardingViewModel: ObservableObject {
    // MARK: - Properties -

    @Published var onBoardingData: [OnboardingItemModel] = []
    @Published var isLastPage: Bool = false

    func load() {
        onBoardingData = [
            .init(id: 12,
                  image: "onboarding1",
                  title: "VISUAL DESIGN",
                  description: "Lorem ipsum dolor sit dim amet, mea regione diamet principes at."),
            .init(id: 13,
                  image: "onboarding2",
                  title: "PROGRAMMING",
                  description: "Lorem ipsum dolor sit dim amet, mea regione diamet principes at."),
            .init(id: 14,
                  image: "onboarding3"
                  , title: "PEOPLE'S PSYCHOLOGY",
                  description: "Lorem ipsum dolor sit dim amet, mea regione diamet principes at."),
            .init(id: 15,
                  image: "onboarding4",
                  title: "INTERACTION DESIGN",
                  description: "Lorem ipsum dolor sit dim amet, mea regione diamet principes at."),
        ]
    }

    func checkIfLast(id: Int) {
        let lastObject = onBoardingData.first(where: { $0.id == id })
        if onBoardingData.last == lastObject {
            isLastPage = true
        } else {
            isLastPage = false
        }
    }
}
