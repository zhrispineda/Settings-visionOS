//
//  NewsView.swift
//  Preferences
//
//  Settings > Apps > News
//

import SwiftUI

struct NewsView: View {
    // Variables
    @State private var restrictStoriesTodayEnabled = false
    @State private var showingRestrictStoriesAlert = false
    @State private var downloadIssuesEnabled = true
    @State private var resetIdentifierEnabled = false
    
    var body: some View {
        CustomList(title: "News") {
            SiriSearchAccessNavigationLabel(appName: "News")
            
            Section(content: {
                Toggle("Restrict Stories in Today", isOn: $restrictStoriesTodayEnabled)
                    .alert("Turning on this setting will limit the stories shown in Today. Top Stories, Trending Stories, and Featured\nStories will be removed.", isPresented: $showingRestrictStoriesAlert) {
                        Button("Restrict Stories?") {}
                        Button("Cancel", role: .cancel) { restrictStoriesTodayEnabled = false }
                    }
                    .onChange(of: restrictStoriesTodayEnabled, {
                        showingRestrictStoriesAlert = restrictStoriesTodayEnabled
                    })
            }, header: {
                Text("News Settings")
            }, footer: {
                Text("Only stories from channels you follow will appear in Today. All other sources will be blocked.")
            })
            
            Section(content: {
                Toggle("Download Issues", isOn: $downloadIssuesEnabled)
            }, header: {
                Text("Automatic Downloads")
            }, footer: {
                Text("Automatically download magazine issues for offline reading. Requires an Apple News+ subscription.")
            })
            
            Section(content: {
                Button("About Apple News & Privacy", action: {}) // Popover
                Button("Apple News Newsletters & Privacy", action: {}) // Popover
                Toggle("Reset Identifier", isOn: $resetIdentifierEnabled)
            }, footer: {
                Text("Turn on to reset the identifier used by Apple News and Stocks to report statistics to news publishers. The identifier will be reset the next time you open Apple News.")
            })
        }
    }
}

#Preview {
    NewsView()
}
