//
//  ContentView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/2/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    enum Setting: String, CaseIterable, Identifiable {
        case general = "General"
        case apps = "Apps"
        
        var id: String { rawValue }
        
        var icon: String {
            switch self {
            case .general:
                return "gear.circle.fill"
            case .apps:
                return "questionmark.circle.fill"
            }
        }
        
        var color: Color {
            switch self {
            case .general:
                return .gray
            case .apps:
                return .blue
            }
        }
        
        var destination: some View {
            switch self {
            case .general:
                return AnyView(EmptyView())
            case .apps:
                return AnyView(EmptyView())
            }
        }
    }
    
    @State private var searchText = ""
    @State private var selection: Setting? = .general

    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                ForEach(Setting.allCases) { setting in
                    NavigationLink(value: setting, label: {
                        Image(systemName: setting.icon)
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white.gradient, setting.color.gradient)
                        Text(setting.id)
                    })
                }
                
                NavigationLink("Label", destination: EmptyView())
            }
            // Find a way to hide navigation bar title but keep the search bar
            .navigationBarTitle("Settings")
            .navigationBarHidden(false)
            // Change search bar to rounded
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } detail: {
            selection?.destination
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
