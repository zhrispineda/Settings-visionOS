//
//  DownloadsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Downloads
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        List {
            Section(content: {
                Button(action: {}, label: {
                    HStack(spacing: 15) {
                        Image(systemName: "visionpro")
                            .font(.title)
                            .foregroundStyle(.blue)
                        VStack(alignment: .leading) {
                            Text("On My Apple Vision Pro")
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
        .navigationTitle("Downloads")
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Downloads")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    DownloadsView()
}
