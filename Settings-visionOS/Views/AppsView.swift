//
//  AppsView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/3/24.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(destination: {}, label: { Text("Freeform") })
                    NavigationLink(destination: {}, label: { Text("Photos") })
                    NavigationLink(destination: {}, label: { Text("Safari") })
                }
                
                Section(content: {
                    NavigationLink(destination: {}, label: { Text("Calendar") })
                    NavigationLink(destination: {}, label: { Text("Maps") })
                    NavigationLink(destination: {}, label: { Text("News") })
                    NavigationLink(destination: {}, label: { Text("Shortcuts") })
                }, header: {
                    Text("Compatible Apps")
                })
            }
            .padding([.leading, .trailing], 25)
            .navigationTitle("Apps")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("Apps")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    AppsView()
}
