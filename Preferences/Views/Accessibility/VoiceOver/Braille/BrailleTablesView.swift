//
//  BrailleTablesView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Braille Tables
//

import SwiftUI

struct BrailleTablesView: View {
    var body: some View {
        CustomList(title: "Braille Tables") {
            Section(content: {
                NavigationLink("English (Unified) – System", destination: SelectedBrailleTableView())
                Button("Add Braille Table", action: {})
            }, footer: {
                Text("Braille tables added here will appear in the Braille Table rotor in VoiceOver.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        BrailleTablesView()
    }
}
