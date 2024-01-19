//
//  SiriSearchAccessNavigationLabel.swift
//  Settings-visionOS
//
//  A template to have a navigation link to controls for an app's access to Siri & Search.
//
//  Parameters:
//  appName: String
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
