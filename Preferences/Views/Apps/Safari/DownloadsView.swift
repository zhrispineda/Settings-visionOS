//
//  DownloadsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Downloads
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        CustomList(title: "Downloads") {
            Section(content: {
                Button(action: {}, label: {
                    HStack(spacing: 15) {
                        Image(systemName: "visionpro")
                            .font(.title)
                            .foregroundStyle(.blue)
                        VStack(alignment: .leading) {
                            Text("On My \(UIDevice().name)")
                            Text("Downloads")
                                .foregroundStyle(.secondary)
                                .font(.callout)
                        }
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                })
                // TODO: Open File folder selection view
                Button(action: {}, label: {
                    HStack(spacing: 15) {
                        Image(systemName: "visionpro")
                            .font(.title)
                            .foregroundStyle(.blue)
                            .opacity(0.0)
                        Text("Other...")
                    }
                })
            }, header: {
                Text("Store Downloaded Files On:")
            }, footer: {
                Text("Store downloads only on this device, and do not make them available on other devices.")
            })
            
            Section {
                ListRowNavigationLabel(title: "Remove Download List Items", subtitle: "After one day", content: RemoveDownloadListItemsView())
            }
        }
    }
}

#Preview {
    DownloadsView()
}
