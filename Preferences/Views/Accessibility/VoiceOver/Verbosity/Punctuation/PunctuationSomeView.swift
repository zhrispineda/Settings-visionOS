//
//  PunctuationSomeView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > Some
//

import SwiftUI

struct PunctuationSomeView: View {
    var body: some View {
        CustomList() {
            Section(content: {
                ListRowLabel(title: "\u{00AC}", subtitle: "Not")
                ListRowLabel(title: "\u{2216}", subtitle: "Set Minus")
                ListRowLabel(title: "\u{0060}", subtitle: "Ignore")
                ListRowLabel(title: "\u{2218}", subtitle: "Composed With")
                ListRowLabel(title: "\u{0040}", subtitle: "At")
                ListRowLabel(title: "\u{0023}", subtitle: "Number Sign")
                ListRowLabel(title: "\u{0024}", subtitle: "Ignore")
                ListRowLabel(title: "\u{007B}", subtitle: "Left Brace")
                ListRowLabel(title: "\u{0025}", subtitle: "Percent")
                ListRowLabel(title: "\u{007C}", subtitle: "Vertical Line")
                ListRowLabel(title: "\u{0026}", subtitle: "Ignore")
                ListRowLabel(title: "\u{007D}", subtitle: "Right Brace")
                ListRowLabel(title: "\u{0027}", subtitle: "Ignore")
                ListRowLabel(title: "\u{007E}", subtitle: "Tilde")
                ListRowLabel(title: "\u{005C}", subtitle: "Backslash")
                ListRowLabel(title: "\u{005E}", subtitle: "Caret")
                ListRowLabel(title: "\u{005F}", subtitle: "Underscore")
                ListRowLabel(title: "\u{003C}", subtitle: "Less Than")
                ListRowLabel(title: "\u{003D}", subtitle: "Equals")
                ListRowLabel(title: "\u{003E}", subtitle: "Greater Than")
                ListRowLabel(title: "\u{002A}", subtitle: "Star")
                ListRowLabel(title: "\u{002B}", subtitle: "Plus")
                ListRowLabel(title: "\u{002D}", subtitle: "Ignore")
                ListRowLabel(title: "\u{002F}", subtitle: "Slash")
                ListRowLabel(title: "new line", subtitle: "New Line")
                ListRowLabel(title: "return", subtitle: "Return")
                ListRowLabel(title: "\u{2032}", subtitle: "Prime")
                ListRowLabel(title: "\u{2022}", subtitle: "Bullet")
                ListRowLabel(title: "\u{2010}", subtitle: "Hyphen")
                ListRowLabel(title: "\u{00B0}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00B6}", subtitle: "Pilcrow")
                ListRowLabel(title: "\u{00A1}", subtitle: "Inverted Exclamation Mark")
                ListRowLabel(title: "\u{00A2}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A3}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A4}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A5}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00A6}", subtitle: "Broken Bar")
                ListRowLabel(title: "\u{00A7}", subtitle: "Section Sign")
            }, header: {
                Text("Default Replacements")
            })
        }
    }
}

#Preview {
    PunctuationSomeView()
}
