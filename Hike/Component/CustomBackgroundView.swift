//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 05/10/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.8)
            
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
