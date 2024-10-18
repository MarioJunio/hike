//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 06/10/24.
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
                configuration.isPressed
                ? LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium,
                ], startPoint: .top, endPoint: .bottom)
                : LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight,
                ], startPoint: .top, endPoint: .bottom)
                
            ).cornerRadius(40)
    }
}
