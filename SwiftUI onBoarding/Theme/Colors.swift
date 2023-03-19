//
//  Colors.swift
//
//  Created by abdullah tarek
//

import SwiftUI

final class AppColors {
    static let shared: AppColors = AppColors()

    private init() {}

    private func createColor(named: ColorNames) -> Color {
        return Color(UIColor(named: named.rawValue) ?? .white)
    }

    // MARK: - Names -

    private enum ColorNames: String {
        case mainColor
        case borderColor
        case mainFontColor
    }

    // MARK: - Font -

    var mainColor: Color {
        return createColor(named: .mainColor)
    }

    var borderColor: Color {
        return createColor(named: .borderColor)
    }

    var mainFontColor: Color {
        return createColor(named: .mainFontColor)
    }
}
