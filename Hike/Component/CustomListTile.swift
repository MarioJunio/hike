//
//  CustomListTile.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 15/10/24.
//

import SwiftUI

struct CustomListTile: View {
    
    @State var leadingIcon: String
    @State var leadingColor: Color
    @State var label: String
    @State var value: String
    
    var body: some View {
        LabeledContent {
            Text(value)
                .foregroundColor(.black)
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(leadingColor)
                    
                    Image(systemName: leadingIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(label)
            }
        }
    }
}

#Preview {
    CustomListTile(
        leadingIcon: "apps.iphone",
        leadingColor: .brown,
        label: "Application",
        value: "App"
    ).padding(.horizontal, 16)
}
