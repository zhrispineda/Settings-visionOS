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
    
    let backgroundAppRefreshApps: [String] = ["Maps", "News"]
    
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
            if backgroundAppRefreshApps.contains(appName) {
                HStack {
                    Image(systemName: "gear.circle.fill")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white.gradient, .gray.gradient)
                    Toggle("Background App Refresh", isOn: .constant(true))
                }
            }
        }, header: {
            Text("Allow \(appName) To Access")
        }, footer: {
            if appName == "Maps" {
                Text("[About Apple Maps & Privacy](#)").tint(.cyan)
            }
        })
    }
}

#Preview {
    SiriSearchAccessNavigationLabel()
}
