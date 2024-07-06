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
    @State private var gameCenterEnabled = true
    @State private var showingRestrictStoriesAlert = false
    @State private var resetIdentifierEnabled = false
    
    var body: some View {
        CustomList(title: "News") {
            SiriSearchAccessNavigationLabel(appName: "News")
            
            Section {
                Link("Join Apple News+", destination: URL(string: "news://subscription")!)
                NavigationLink("Automatic Downloads") {}.disabled(true)
            } header: {
                Text("News+ Offline Mode")
            } footer: {
                Text("Automatically download content to enjoy offline. Available exclusively for Apple News+ subscribers.")
            }
            
            Section {
                Toggle("Game Center", isOn: $gameCenterEnabled)
            } header: {
                Text("News+ Puzzles")
            } footer: {
                Text("Send your results to Game Center to see how you rank among friends and other solvers on today‘s puzzles. [See how your data is managed...](#)")
            }
            
            Section {
                Toggle("Restrict Stories in Today", isOn: $restrictStoriesTodayEnabled)
                    .alert("Turning on this setting will limit the stories shown in Today. Top Stories, Trending Stories, and Featured\nStories will be removed.", isPresented: $showingRestrictStoriesAlert) {
                        Button("Restrict Stories?") {}
                        Button("Cancel", role: .cancel) { restrictStoriesTodayEnabled = false }
                    }
                    .onChange(of: restrictStoriesTodayEnabled) {
                        showingRestrictStoriesAlert = restrictStoriesTodayEnabled
                    }
            } header: {
                Text("Today Feed")
            } footer: {
                Text("Only stories from channels you follow will appear in Today. All other sources will be blocked.")
            }
            
            Section {
                Button("See how your data is managed...") {}
                Toggle("Reset Identifier", isOn: $resetIdentifierEnabled)
            } header: {
                Text("Privacy")
            } footer: {
                Text("Turn on to reset the identifier used by Apple News and Stocks to report statistics to news publishers. The identifier will be reset the next time you open Apple News.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewsView()
    }
}
