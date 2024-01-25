//
//  AppStorageInfoView.swift
//  Preferences
//
//  Settings > Storage > [App]
//

import SwiftUI

struct AppStorageInfoView: View {
    var appName: String = "Safari"
    
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
                ListRowLabel(title: "Documents & Data", subtitle: "\(appName == "Calendar" ? "3.3 MB" : "345 KB")")
            }
            
            if appName == "Calendar" {
                Section(content: {
                    ListRowLabel(title: "Events", subtitle: "2.3 MB")
                    ListRowLabel(title: "Attachments", subtitle: "Zero KB")
                }, header: {
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
                })
            }
            
            if appName == "Safari" {
                Section {
                    ListRowNavigationLabel(title: "Website Data", subtitle: "Zero KB", content: EmptyView())
                        .disabled(true)
                }
                
                Section(content: {
                    ListRowLabel(title: "Offline Reading List", subtitle: "Zero KB")
                }, footer: {
                    Text("Clearing the offline Reading List cache will not remove any items from your Reading List.")
                })
                
                Section {
                    ListRowLabel(title: "History", subtitle: "Zero KB")
                }
                
                Section {
                    ListRowLabel(title: "Downloads", subtitle: "Zero KB")
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
    AppStorageInfoView()
}
