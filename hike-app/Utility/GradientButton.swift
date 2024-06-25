//
//  GradientButton.swift
//  hike-app
//
//  Created by Reza on 25/6/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .customGreenDark,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ):
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGreenDark
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ))
            .cornerRadius(30)
    }
}
