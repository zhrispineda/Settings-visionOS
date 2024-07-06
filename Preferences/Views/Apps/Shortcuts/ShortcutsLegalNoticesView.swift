//
//  ShortcutsLegalNoticesView.swift
//  Preferences
//
//  Settings > Apps > Shortcuts > Legal Notices
//

import SwiftUI

struct ShortcutsLegalNoticesView: View {
    var body: some View {
        CustomList(title: "Legal Notices") {
            Section {} footer: {
                Text("Legal Notices:")
                    .foregroundStyle(.secondary)
                    .listRowBackground(Color.clear)
            }
        }
    }
}

#Preview {
    ShortcutsLegalNoticesView()
}
