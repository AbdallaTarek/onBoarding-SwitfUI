//
//  MainButton.swift
//  SwiftUI onBoarding
//
//  Created by abdullah tarek on 19/03/2023.
//

import SwiftUI

struct MainButton: View {
    var title: String
    var body: some View {
        Button {
        } label: {
            ZStack {
                Rectangle()
                    .overlay {
                        LinearGradient(colors: [
                            AppColors.shared.mainColor,
                            .cyan,
                        ],
                        startPoint: .leading,
                        endPoint: .trailing)
                    }
                    .clipShape(Capsule())
                    .frame(height: 48)

                Text(title)
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "SADASDASD")
    }
}
