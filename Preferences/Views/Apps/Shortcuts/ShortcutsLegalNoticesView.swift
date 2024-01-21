//
//  ShortcutsLegalNoticesView.swift
//  Preferences
//
//  Settings > Apps > Shortcuts > Legal Notices
//

import SwiftUI

struct ShortcutsLegalNoticesView: View {
    var body: some View {
        List {
            Section(content: {}, footer: {
                Text("Legal Notices:")
                    .foregroundStyle(.secondary)
                    .listRowBackground(Color.clear)
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Legal Notices")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ShortcutsLegalNoticesView()
}
