//
//  ShortcutsView.swift
//  Preferences
//
//  Settings > Apps > Shortcuts
//

import SwiftUI

struct ShortcutsView: View {
    // Variables
    @State private var iCloudSyncEnabled = true
    @State private var privateSharingEnabled = false
    
    var body: some View {
        List {
            Section {
                Toggle("iCloud Sync", isOn: $iCloudSyncEnabled)
            }
            
            Section(content: {
                Toggle("Private Sharing", isOn: $privateSharingEnabled)
            }, footer: {
                Text("Allow receiving shortcuts directly from people in your contacts. Apple cannot verify the authenticity of shortcuts shared privately. [About Shortcuts Sharing & Privacy...](#)")
            })
            
            Section {
                NavigationLink("Advanced", destination: ShortcutsAdvancedView())
            }
            
            Section {
                NavigationLink("Legal Notices", destination: ShortcutsLegalNoticesView())
            }
        }
        .navigationTitle("Shortcuts")
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Shortcuts")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ShortcutsView()
}
