//
//  SiriSearchAppView.swift
//  Settings-visionOS
//
//  A template to have controls for an app's access to Siri & Search.
//
//  Parameters:
//  appName: String
//

import SwiftUI

struct SiriSearchAppView: View {
    // Variables
    @State private var learnFromAppEnabled = true
    @State private var showAppInSearchEnabled = true
    @State private var showContentInSearchEnabled = true
    @State private var suggestInAppEnabled = true
    @State private var suggestAppEnabled = true
    var appName: String = "App"
    
    let showInAppApps = ["Safari", "Calendar", "Maps", "News"]
    
    var body: some View {
       List {
            Section(content: {
                Toggle("Learn from this App", isOn: $learnFromAppEnabled)
            }, footer: {
                Text("Allow Siri to learn from how you use \u{201C}\(appName)\u{201D} to make suggestions across apps.")
            })
            
            Section(content: {
                Toggle("Show App in Search", isOn: $showAppInSearchEnabled)
                if showAppInSearchEnabled {
                    Toggle("Show Content in Search", isOn: $showContentInSearchEnabled)
                }
            }, header: {
                Text("While Searching")
            }, footer: {
                Text("Allow \u{201C}\(appName)\u{201D} the app and its content to appear in Search.")
            })
            
            Section(content: {
                if showInAppApps.contains(appName) {
                    Toggle("Suggest in App", isOn: $suggestInAppEnabled)
                }
                Toggle("Suggest App", isOn: $suggestAppEnabled)
            }, header: {
                Text("Suggestions")
            }, footer: {
                Text("Allow suggestions and content from \u{201C}\(appName)\u{201D} and Shortcuts for the app to appear \(showInAppApps.contains(appName) ? "in the app and " : "")in Search. These suggestions and Shortcuts are based on how you use the app.")
            })
        }
       .padding(.horizontal, 45)
       .toolbar {
           ToolbarItem(placement: .principal, content: {
               Text(appName)
                   .font(.title2)
                   .frame(maxWidth: .infinity)
                   .offset(x: -40)
           })
       }
    }
}

#Preview {
    SiriSearchAppView()
}
