//
//  LanguageRegionView.swift
//  Preferences
//
//  Settings > General > Language & Region
//

import SwiftUI

struct LanguageRegionView: View {
    // Variables
    @State private var languages = ["English"]
    @State private var liveTextEnabled = true
    let table = "InternationalSettings"
    
    var body: some View {
        CustomList(title: "Language & Region") {
            Section {
                ForEach($languages, id: \.self, editActions: .move) { $lang in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(lang)
                            Text("Apple Vision Pro Language")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Image(systemName: "line.3.horizontal")
                            .imageScale(.large)
                            .foregroundStyle(.tertiary)
                    }
                }
                Button("Add Language...") {}
            } header: {
                Text("Preferred Languages")
            } footer: {
                Text("Apps and websites will use the first language in this list that they support.")
            }
            
            Section {
                Button {} label: {
                    ListRowNavigationLabel(title: "Region", subtitle: "United States", content: EmptyView())
                }
                ListRowNavigationLabel(title: "Calendar", subtitle: "Gregorian", content: EmptyView())
                ListRowNavigationLabel(title: "Temperature", subtitle: "°F", content: EmptyView())
                ListRowNavigationLabel(title: "Measurement System", subtitle: "US", content: EmptyView())
                ListRowNavigationLabel(title: "First Day of Week", subtitle: "Sunday", content: EmptyView())
                ListRowNavigationLabel(title: "Date Format", subtitle: "8/19/24", content: EmptyView())
                ListRowNavigationLabel(title: "Number Format", subtitle: "1,234,567.89", content: EmptyView())
            }
            
            Section {
                Toggle("Live Text", isOn: $liveTextEnabled)
            } footer: {
                Text("Select text in images to copy or take action.", tableName: table)
            }
            
            Section {
                VStack(alignment: .center) {
                    Text("Region Format Example", tableName: table)
                        .padding(.bottom, 5)
                    Text("12:34 AM")
                    Text("Monday, August 19, 2024")
                    Text("$12,345.67\t4,567.90")
                }
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .listRowBackground(Color.clear)
            }
        }
    }
}

#Preview {
    LanguageRegionView()
}
