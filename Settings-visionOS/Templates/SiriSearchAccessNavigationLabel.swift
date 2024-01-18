//
//  SiriSearchAccessNavigationLabel.swift
//  Settings-visionOS
//
//  Created by Chris on 1/18/24.
//

import SwiftUI

struct SiriSearchAccessNavigationLabel: View {
    var appName: String = "App"
    
    var body: some View {
        Section(content: {
            NavigationLink(destination: SiriSearchAppView(appName: appName), label: {
                HStack {
                    Image("applesiri")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                        .padding(.horizontal, 2)
                    Text("Siri & Search")
                }
            })
        }, header: {
            Text("Allow \(appName) To Access")
        })
    }
}

#Preview {
    SiriSearchAccessNavigationLabel()
}
