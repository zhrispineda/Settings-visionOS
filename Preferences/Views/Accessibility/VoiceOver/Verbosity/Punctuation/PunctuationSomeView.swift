//
//  PunctuationSomeView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > Some
//

import SwiftUI

struct PunctuationSomeView: View {
    var body: some View {
        CustomList {
            Section("Default Replacements") {
                LabeledContent("\u{00AC}", value: "Not")
                LabeledContent("\u{2216}", value: "Set Minus")
                LabeledContent("\u{0060}", value: "Ignore")
                LabeledContent("\u{2218}", value: "Composed With")
                LabeledContent("\u{0040}", value: "At")
                LabeledContent("\u{0023}", value: "Number Sign")
                LabeledContent("\u{0024}", value: "Ignore")
                LabeledContent("\u{007B}", value: "Left Brace")
                LabeledContent("\u{0025}", value: "Percent")
                LabeledContent("\u{007C}", value: "Vertical Line")
                LabeledContent("\u{0026}", value: "Ignore")
                LabeledContent("\u{007D}", value: "Right Brace")
                LabeledContent("\u{0027}", value: "Ignore")
                LabeledContent("\u{007E}", value: "Tilde")
                LabeledContent("\u{005C}", value: "Backslash")
                LabeledContent("\u{005E}", value: "Caret")
                LabeledContent("\u{005F}", value: "Underscore")
                LabeledContent("\u{003C}", value: "Less Than")
                LabeledContent("\u{003D}", value: "Equals")
                LabeledContent("\u{003E}", value: "Greater Than")
                LabeledContent("\u{002A}", value: "Star")
                LabeledContent("\u{002B}", value: "Plus")
                LabeledContent("\u{002D}", value: "Ignore")
                LabeledContent("\u{002F}", value: "Slash")
                LabeledContent("new line", value: "New Line")
                LabeledContent("return", value: "Return")
                LabeledContent("\u{2032}", value: "Prime")
                LabeledContent("\u{2022}", value: "Bullet")
                LabeledContent("\u{2010}", value: "Hyphen")
                LabeledContent("\u{00B0}", value: "Ignore")
                LabeledContent("\u{00B6}", value: "Pilcrow")
                LabeledContent("\u{00A1}", value: "Inverted Exclamation Mark")
                LabeledContent("\u{00A2}", value: "Ignore")
                LabeledContent("\u{00A3}", value: "Ignore")
                LabeledContent("\u{00A4}", value: "Ignore")
                LabeledContent("\u{00A5}", value: "Ignore")
                LabeledContent("\u{00A6}", value: "Broken Bar")
                LabeledContent("\u{00A7}", value: "Section Sign")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PunctuationSomeView()
    }
}
