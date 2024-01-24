//
//  ContentRestrictionsView.swift
//  Preferences
//
//  Created by Chris on 1/22/24.
//

import SwiftUI

struct ContentRestrictionsView: View {
    var body: some View {
        List {
            Section(content: {
                ListRowNavigationLabel(title: "Music, Podcasts, News, Fitness", subtitle: "Explicit", content: CleanExplicitView(title: "Music, Podcasts, News, Fitness"))
                ListRowNavigationLabel(title: "Music Videos", subtitle: "On", content: OnOffView(title: "Music Videos"))
                ListRowNavigationLabel(title: "Music Profiles", subtitle: "On", content: OnOffView(title: "Music Profiles"))
                ListRowNavigationLabel(title: "Movies", subtitle: "Allow All", content: MoviesView())
                ListRowNavigationLabel(title: "TV", subtitle: "Allow All", content: TVView())
                ListRowNavigationLabel(title: "Books", subtitle: "Explicit", content: CleanExplicitView(title: "Books"))
                ListRowNavigationLabel(title: "Apps", subtitle: "Allow All", content: RestrictionsAppsView())
                ListRowNavigationLabel(title: "App Clips", subtitle: "Allow", content: AllowDenyView(title: "App Clips"))
            }, header: {
                Text("Allowed Store Content")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Web Content", subtitle: "Allowed Websites", content: WebContentView())
            }, header: {
                Text("Web Content")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Web Search Content", subtitle: "Allow", content: AllowDenyView(title: "Web Search Content"))
                ListRowNavigationLabel(title: "Explicit Language", subtitle: "Allow", content: AllowDenyView(title: "Explicit Language"))
            }, header: {
                Text("Siri")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Multiplayer Games", subtitle: "Allow with Everyone", content: MultiplayerGamesView())
                ListRowNavigationLabel(title: "Adding Friends", subtitle: "Allow", content: AllowDenyView(title: "Adding Friends"))
                ListRowNavigationLabel(title: "Connect with Friends", subtitle: "Allow", content: AllowDenyView(title: "Connect with Friends"))
                ListRowNavigationLabel(title: "Screen Recording", subtitle: "Allow", content: AllowDenyView(title: "Screen Recording"))
                ListRowNavigationLabel(title: "Nearby Multiplayer", subtitle: "Allow", content: AllowDenyView(title: "Nearby Multiplayer"))
                ListRowNavigationLabel(title: "Private Messaging", subtitle: "Allow", content: AllowDenyView(title: "Private Messaging"))
                ListRowNavigationLabel(title: "Profile Privacy Changes", subtitle: "Allow", content: AllowDenyView(title: "Profile Privacy Changes"))
                ListRowNavigationLabel(title: "Avatar & Nickname Changes", subtitle: "Allow", content: AllowDenyView(title: "Avatar & Nickname Changes"))
            }, header: {
                Text("Game Center")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Content Restrictions")
                        .font(.title2)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ContentRestrictionsView()
}
