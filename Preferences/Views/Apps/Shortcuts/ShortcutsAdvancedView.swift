//
//  ShortcutsAdvancedView.swift
//  Preferences
//
//  Settings > Apps > Shortcuts > Advanced
//

import SwiftUI

struct ShortcutsAdvancedView: View {
    // Variables
    @State private var allowRunningScriptsEnabled = false
    @State private var allowSharingLargeDataEnabled = false
    @State private var allowDeletingWithoutConfirmationEnabled = false
    @State private var allowDeletingLargeDataEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Allow Running Scripts", isOn: $allowRunningScriptsEnabled)
            }, footer: {
                Text("When enabled, the actions \u{201C}Run JavaScript on Web Page\u{201D} and  \u{201C}Run SSH Script Over SSH\u{201D} can be run.")
            })
            
            Section {
                Toggle("Allow Sharing Large Amounts of Data", isOn: $allowSharingLargeDataEnabled)
            }
            
            Section {
                Toggle("Allow Deleting Without Confirmation", isOn: $allowDeletingWithoutConfirmationEnabled)
                Toggle("Allow Deleting Large Amounts of Data", isOn: $allowDeletingLargeDataEnabled)
            }
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Advanced")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ShortcutsAdvancedView()
}
