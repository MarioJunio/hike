//
//  CustomCircleView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 09/10/24.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var toggleAnimationGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(
                    colors: [
                        Color(.colorIndigoMedium),
                        Color(.colorSalmonLight)
                    ],
                    startPoint: toggleAnimationGradient ? .topLeading : .bottomLeading,
                    endPoint: toggleAnimationGradient ? .bottomTrailing : .topTrailing
                )
            )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        toggleAnimationGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        }
        .frame(maxWidth: 256, maxHeight: 256)
    }
}

#Preview {
    CustomCircleView()
}
