//
//  GeneralView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/3/24.
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink("About", destination: AboutView())
                }
                
                Section {
                    NavigationLink("Keyboard", destination: {})
                    NavigationLink("Game Controller", destination: {})
                    NavigationLink("Fonts", destination: {})
                    NavigationLink("Dictionary", destination: {})
                }
                
                Section {
                    NavigationLink("VPN & Device Management", destination: {})
                }
                
                Section {
                    NavigationLink("Transfer or Reset This Apple Vision Pro", destination: {})
                }
            }
            .padding([.leading, .trailing], 25)
            .navigationTitle("General")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("General")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    GeneralView()
}
