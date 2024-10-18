//
//  CircleButtonView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 06/10/24.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium,
                        ], 
                        startPoint: .top,
                        endPoint: .bottom
                    )
                ).stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ], startPoint: .top, endPoint: .bottom
                    ),
                    lineWidth: 4
            )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }.frame(maxWidth: 58, maxHeight: 58)
    }
}

#Preview {
    CircleButtonView().padding()
}
