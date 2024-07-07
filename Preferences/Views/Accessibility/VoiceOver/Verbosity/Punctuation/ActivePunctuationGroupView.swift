//
//  ActivePunctuationGroupView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > Active Punctuation Group
//

import SwiftUI

struct ActivePunctuationGroupView: View {
    // Variables
    let systemGroups = ["All", "Some", "None"]
    @State private var selection = "Some"
    
    var body: some View {
        CustomList(title: "Active Punctuation Group") {
            Section("System Groups") {
                Picker("", selection: $selection) {
                    ForEach(systemGroups, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActivePunctuationGroupView()
    }
}
