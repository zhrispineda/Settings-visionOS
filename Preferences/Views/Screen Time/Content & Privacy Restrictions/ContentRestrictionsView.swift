//
//  ContentRestrictionsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions
//

import SwiftUI

struct ContentRestrictionsView: View {
    var body: some View {
        CustomList(title: "Content Restrictions") {
            Section("Allowed Store Content") {
                ListRowNavigationLabel(title: "Music, Podcasts, News, Fitness", subtitle: "Explicit", content: CleanExplicitView(title: "Music, Podcasts, News, Fitness"))
                ListRowNavigationLabel(title: "Music Videos", subtitle: "On", content: OnOffView(title: "Music Videos"))
                ListRowNavigationLabel(title: "Music Profiles", subtitle: "On", content: OnOffView(title: "Music Profiles"))
                ListRowNavigationLabel(title: "Movies", subtitle: "Allow All", content: MoviesView())
                ListRowNavigationLabel(title: "TV", subtitle: "Allow All", content: TVView())
                ListRowNavigationLabel(title: "Books", subtitle: "Explicit", content: CleanExplicitView(title: "Books"))
                ListRowNavigationLabel(title: "Apps", subtitle: "Allow All", content: RestrictionsAppsView())
                ListRowNavigationLabel(title: "App Clips", subtitle: "Allow", content: AllowDenyView(title: "App Clips"))
            }
            
            Section("Web Content") {
                ListRowNavigationLabel(title: "Web Content", subtitle: "Allowed Websites", content: WebContentView())
            }
            
            Section("Siri") {
                ListRowNavigationLabel(title: "Web Search Content", subtitle: "Allow", content: AllowDenyView(title: "Web Search Content"))
                ListRowNavigationLabel(title: "Explicit Language", subtitle: "Allow", content: AllowDenyView(title: "Explicit Language"))
            }
            
            Section("Game Center") {
                ListRowNavigationLabel(title: "Multiplayer Games", subtitle: "Allow with Everyone", content: MultiplayerGamesView())
                ListRowNavigationLabel(title: "Adding Friends", subtitle: "Allow", content: AllowDenyView(title: "Adding Friends"))
                ListRowNavigationLabel(title: "Connect with Friends", subtitle: "Allow", content: AllowDenyView(title: "Connect with Friends"))
                ListRowNavigationLabel(title: "Screen Recording", subtitle: "Allow", content: AllowDenyView(title: "Screen Recording"))
                ListRowNavigationLabel(title: "Nearby Multiplayer", subtitle: "Allow", content: AllowDenyView(title: "Nearby Multiplayer"))
                ListRowNavigationLabel(title: "Private Messaging", subtitle: "Allow", content: AllowDenyView(title: "Private Messaging"))
                ListRowNavigationLabel(title: "Profile Privacy Changes", subtitle: "Allow", content: AllowDenyView(title: "Profile Privacy Changes"))
                ListRowNavigationLabel(title: "Avatar & Nickname Changes", subtitle: "Allow", content: AllowDenyView(title: "Avatar & Nickname Changes"))
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContentRestrictionsView()
    }
}
