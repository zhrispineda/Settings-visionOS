//
//  FavoritesView.swift
//  Preferences
//
//  Settings > Apps > Safari > Favorites
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        CustomList(title: "Favorites") {
            Section {} footer: {
                Text("Quickly access Favorite bookmarks when you enter an address, search, or create a new tab.")
            }
            
            Section {
                Button {} label: {
                    HStack(spacing: 15) {
                        Label("Favorites", systemImage: "folder")
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FavoritesView()
    }
}
