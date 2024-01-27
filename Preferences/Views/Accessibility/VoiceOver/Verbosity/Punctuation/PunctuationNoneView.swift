//
//  PunctuationNoneView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > None
//

import SwiftUI

struct PunctuationNoneView: View {
    var body: some View {
        CustomList() {
            Section(content: {
                ListRowLabel(title: "\u{0023}", subtitle: "Number Sign")
                ListRowLabel(title: "\u{0024}", subtitle: "Ignore")
                ListRowLabel(title: "\u{007C}", subtitle: "Vertical Line")
                ListRowLabel(title: "\u{007E}", subtitle: "Tilde")
                ListRowLabel(title: "\u{005C}", subtitle: "Backslash")
                ListRowLabel(title: "\u{005E}", subtitle: "Caret")
                ListRowLabel(title: "\u{005F}", subtitle: "Underscore")
                ListRowLabel(title: "\u{002A}", subtitle: "Star")
                ListRowLabel(title: "\u{00B0}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00B6}", subtitle: "Pilcrow")
                ListRowLabel(title: "\u{00A2}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A3}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A4}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A5}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A7}", subtitle: "Section Sign")
            }, header: {
                Text("Default Replacements")
            })
        }
    }
}

#Preview {
    PunctuationNoneView()
}
