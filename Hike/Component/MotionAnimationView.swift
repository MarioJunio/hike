//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 09/10/24.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: fields
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    func randomOpacity() -> CGFloat {
        return CGFloat.random(in: 0.25...0.5)
    }
    
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(randomOpacity())
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25).repeatForever().speed(randomSpeed()).delay(randomDelay())) {
                            isAnimating = true
                        }
                    })
            }
        }
        .frame(maxWidth: 256, maxHeight: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background(Circle().fill(.teal))
}
