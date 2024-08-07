//
//  ReaderView.swift
//  Preferences
//
//  Settings > Apps > Safari > Reader
//

import SwiftUI

struct ReaderView: View {
    // Variables
    @State private var allWebsitesEnabled = false
    
    var body: some View {
        List {
            Section {
                Toggle("All Websites", isOn: $allWebsitesEnabled)
            } header: {
                Text("Automatically Use Reader On")
            }
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Reader")
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
        ReaderView()
    }
}
