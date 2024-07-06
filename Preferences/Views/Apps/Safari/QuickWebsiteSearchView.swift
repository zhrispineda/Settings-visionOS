//
//  QuickWebsiteSearchView.swift
//  Preferences
//
//  Settings > Apps > Safari > Quick Website Search
//

import SwiftUI

struct QuickWebsiteSearchView: View {
    // Variables
    @State private var quickWebsiteSearchEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("Quick Website Search", isOn: $quickWebsiteSearchEnabled)
            } footer: {
                Text("Use the Smart Search Field to search within websites by typing the website name as part of your search.\n\nFor example, type \u{201C}wiki einstein\u{201D} to show search results for \u{201C}einstein\u{201D}.")
            }
            
            Section {} footer: {
                Text("Quick website search shortcuts are added automatically by searching within a website.")
            }
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Quick Website Search")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    NavigationStack {
        QuickWebsiteSearchView()
    }
}
