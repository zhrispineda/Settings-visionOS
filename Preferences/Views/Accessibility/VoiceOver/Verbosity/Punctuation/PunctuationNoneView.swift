//
//  PunctuationNoneView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > None
//

import SwiftUI

struct PunctuationNoneView: View {
    var body: some View {
        CustomList {
            Section("Default Replacements") {
                LabeledContent("\u{0023}", value: "Number Sign")
                LabeledContent("\u{0024}", value: "Ignore")
                LabeledContent("\u{007C}", value: "Vertical Line")
                LabeledContent("\u{007E}", value: "Tilde")
                LabeledContent("\u{005C}", value: "Backslash")
                LabeledContent("\u{005E}", value: "Caret")
                LabeledContent("\u{005F}", value: "Underscore")
                LabeledContent("\u{002A}", value: "Star")
                LabeledContent("\u{00B0}", value: "Ignore")
                LabeledContent("\u{00B6}", value: "Pilcrow")
                LabeledContent("\u{00A2}", value: "Ignore")
                LabeledContent("\u{00A3}", value: "Ignore")
                LabeledContent("\u{00A4}", value: "Ignore")
                LabeledContent("\u{00A5}", value: "Ignore")
                LabeledContent("\u{00A7}", value: "Section Sign")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PunctuationNoneView()
    }
}
