//
//  AppStorageInfoView.swift
//  Preferences
//
//  Settings > Storage > [App]
//
//  Parameters:
//  appName: String
//

import SwiftUI

struct AppStorageInfoView: View {
    var appName = String()
    
    var body: some View {
        CustomList(title: appName) {
            Section {
                HStack(alignment: .top, spacing: 15) {
                    Image("apple\(appName.lowercased())")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                    VStack(alignment: .leading) {
                        Text(appName)
                        Text("Apple Inc.")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                    }
                }
                LabeledContent("Documents & Data", value: appName == "Calendar" ? "3.3 MB" : "345 KB")
            }
            
            if appName == "Calendar" {
                Section {
                    LabeledContent("Events", value: "2.3 MB")
                    LabeledContent("Attachments", value: "Zero KB")
                } header: {
                    HStack {
                        Text(appName.uppercased())
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("Zero KB")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            
            if appName == "Safari" {
                Section {
                    ListRowNavigationLabel(title: "Website Data", subtitle: "Zero KB", content: EmptyView())
                        .disabled(true)
                }
                
                Section {
                    LabeledContent("Offline Reading List", value: "Zero KB")
                } footer: {
                    Text("Clearing the offline Reading List cache will not remove any items from your Reading List.")
                }
                
                Section {
                    LabeledContent("History", value: "Zero KB")
                }
                
                Section {
                    LabeledContent("Downloads", value: "Zero KB")
                }
                
                Section {
                    ListRowNavigationLabel(title: "Extensions", subtitle: "Zero KB", content: EmptyView())
                        .disabled(true)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AppStorageInfoView()
    }
}
