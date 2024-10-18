//
//  CardView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 05/10/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageIndex: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    func randomImage() {
        print("Button was pressed")
        
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageIndex
        
        imageIndex = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 52))
                            .fontWeight(.black)
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
                        
                        Spacer()
                        
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            CircleButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                }
                .padding(.horizontal, 32)
                
                
                // MARK: main content
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageIndex)")
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageIndex)
                }
                
                Button {
                    randomImage()
                } label: {
                    Text("Explorer more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium,
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        ).shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }.buttonStyle(GradientButton())
                
            }
        }.frame(maxWidth: 320, maxHeight: 570)
    }
}

#Preview {
    CardView()
}
