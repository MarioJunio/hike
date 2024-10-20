//
//  SettingsView.swift
//  Hike
//
//  Created by Mario Junio Marques Martins on 15/10/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            
            Section {
             
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ], startPoint: .top, endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                
                VStack(spacing: 8) {
                    Text("Where you can find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved")
                    Spacer()
                }.padding(.vertical, 8)) {
                    CustomListTile(
                        leadingIcon: "apps.iphone",
                        leadingColor: .blue,
                        label: "Application",
                        value: "HIKE"
                    )
                    
                    CustomListTile(
                        leadingIcon: "swift",
                        leadingColor: .orange,
                        label: "Technology",
                        value: "Swift"
                    )
                    
                    CustomListTile(
                        leadingIcon: "gear",
                        leadingColor: .purple,
                        label: "Version",
                        value: "1.0"
                    )
                    
                    CustomListTile(
                        leadingIcon: "ellipsis.curlybraces",
                        leadingColor: .mint,
                        label: "Developer",
                        value: "Mario Martins"
                    )
                    
                    CustomListTile(
                        leadingIcon: "paintpalette",
                        leadingColor: .pink,
                        label: "Designer",
                        value: "Diego Antunes"
                    )
                    
                    CustomListTile(
                        leadingIcon: "globe",
                        leadingColor: .indigo,
                        label: "Website",
                        value: "www.yara.com"
                    )
                    
                }
        }
    }
}

#Preview {
    SettingsView()
}
