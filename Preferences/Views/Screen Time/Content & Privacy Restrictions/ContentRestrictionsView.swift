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
                ListRowNavigationLabel(title: "Music, Podcasts, News, Fitness", subtitle: "Explicit", content: AnyView(CleanExplicitView(title: "Music, Podcasts, News, Fitness")))
                ListRowNavigationLabel(title: "Music Videos", subtitle: "On", content: AnyView(OnOffView(title: "Music Videos")))
                ListRowNavigationLabel(title: "Music Profiles", subtitle: "On", content: AnyView(OnOffView(title: "Music Profiles")))
                ListRowNavigationLabel(title: "Movies", subtitle: "Allow All", content: AnyView(MoviesView()))
                ListRowNavigationLabel(title: "TV", subtitle: "Allow All", content: AnyView(TVView()))
                ListRowNavigationLabel(title: "Books", subtitle: "Explicit", content: AnyView(CleanExplicitView(title: "Books")))
                ListRowNavigationLabel(title: "Apps", subtitle: "Allow All", content: AnyView(RestrictionsAppsView()))
                ListRowNavigationLabel(title: "App Clips", subtitle: "Allow", content: AnyView(AllowDenyView(title: "App Clips")))
            }, header: {
                Text("Allowed Store Content")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Web Content", subtitle: "Allowed Websites", content: AnyView(WebContentView()))
            }, header: {
                Text("Web Content")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Web Search Content", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Web Search Content")))
                ListRowNavigationLabel(title: "Explicit Language", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Explicit Language")))
            }, header: {
                Text("Siri")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Multiplayer Games", subtitle: "Allow with Everyone", content: AnyView(MultiplayerGamesView()))
                ListRowNavigationLabel(title: "Adding Friends", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Adding Friends")))
                ListRowNavigationLabel(title: "Connect with Friends", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Connect with Friends")))
                ListRowNavigationLabel(title: "Screen Recording", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Screen Recording")))
                ListRowNavigationLabel(title: "Nearby Multiplayer", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Nearby Multiplayer")))
                ListRowNavigationLabel(title: "Private Messaging", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Private Messaging")))
                ListRowNavigationLabel(title: "Profile Privacy Changes", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Profile Privacy Changes")))
                ListRowNavigationLabel(title: "Avatar & Nickname Changes", subtitle: "Allow", content: AnyView(AllowDenyView(title: "Avatar & Nickname Changes")))
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
