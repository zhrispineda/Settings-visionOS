//
//  EnvironmentsView.swift
//  Settings-visionOS
//
//  Settings > Environments
//

import SwiftUI

struct EnvironmentsView: View {
    @State private var volume = 100.0
    
    var body: some View {
        NavigationStack {
            List {
                Section(content: {
                    ListRowNavigationLabel(title: "Appearance", subtitle: "Automatic", content: AnyView(EmptyView()))
                }, footer: {
                    Text("Automatically adjust the Environment appearance based on your time of day, or choose a default. Shared Environments will not be affected.")
                })
                
                Section(content: {
                    Slider(value: $volume)
                }, header: {
                    Text("Volume")
                }, footer: {
                    Text("Adjust the volume of the Environment's ambient sounds.")
                })
            }
            .padding([.leading, .trailing], 30)
            .navigationTitle("Environments")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("Environments")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    EnvironmentsView()
}
