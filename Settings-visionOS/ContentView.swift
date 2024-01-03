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
        case people = "People"
        case environments = "Environments"
        
        var id: String { rawValue }
        
        var icon: String {
            switch self {
            case .general:
                return "gear.circle.fill"
            case .apps:
                return "logo.appstore.circle.fill"
            case .people:
                return "person.2.circle.fill"
            case .environments:
                return "mountain.2.circle.fill"
//            default:
//                return "questionmark.circle.fill"
            }
        }
        
        var color: Color {
            switch self {
            case .apps:
                return .blue
            case .people:
                return .green
            case .environments:
                return .indigo
            default:
                return .gray
            }
        }
        
        var destination: some View {
            switch self {
            case .general:
                return AnyView(GeneralView())
            case .apps:
                return AnyView(AppsView())
            default:
                return AnyView(EmptyView())
            }
        }
    }
    
    @State private var searchText = ""
    @State private var selection: Setting? = .general

    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                Section {
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, .gray.gradient)
                                .font(.system(size: 40))
                                .padding(.leading, -5)
                            VStack(alignment: .leading) {
                                Text("Sign in to Apple Vision Pro")
                                    .font(.subheadline)
                                    .bold()
                                Text("Set up iCloud, the App Store, and more.")
                                    .font(.footnote)
                            }
                        }
                    })
                }
                
                ForEach(Setting.allCases) { setting in
                    NavigationLink(value: setting, label: {
                        if setting.icon == "logo.appstore.circle.fill" {
                            Image(setting.icon)
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, setting.color.gradient)
                        } else {
                            Image(systemName: setting.icon)
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, setting.color.gradient)
                        }
                        Text(setting.id)
                    })
                }
            }
            .navigationBarTitle("Settings")
            // Find a way to hide navigation bar title but keep the search bar including rounding the bar to make it capsule shaped
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } detail: {
            selection?.destination
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
