//
//  SubtitlesCaptioningView.swift
//  Preferences
//
//  Settings > Accessibility > Subtitles & Captioning
//

import SwiftUI

struct SubtitlesCaptioningView: View {
    // Variables
    @State private var closedCaptionsSDHEnabled = false
    
    var body: some View {
        CustomList(title: "Subtitles & Captioning") {
            Section(content: {
                Toggle("Closed Captioning + SDH", isOn: $closedCaptionsSDHEnabled)
            }, footer: {
                Text("When available, prefer captioning or subtitles for the deaf and hard of hearing.")
            })
            
            Section {
                ListRowNavigationLabel(title: "Style", subtitle: "Transparent Background", content: EmptyView())
            }
        }
    }
}

#Preview {
    SubtitlesCaptioningView()
}
