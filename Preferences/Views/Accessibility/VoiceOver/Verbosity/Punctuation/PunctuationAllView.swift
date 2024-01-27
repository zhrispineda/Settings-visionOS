//
//  PunctuationAllView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > All
//

import SwiftUI

struct PunctuationAllView: View {
    var body: some View {
        CustomList() {
            Section(content: {
                ListRowLabel(title: "\u{00BB}", subtitle: "Right Double Arrows")
                ListRowLabel(title: "\u{00AB}", subtitle: "Left Double Arrows")
                ListRowLabel(title: "\u{00AC}", subtitle: "Not")
                ListRowLabel(title: "\u{2216}", subtitle: "Set Minus")
                ListRowLabel(title: "\u{0060}", subtitle: "Grave Accent")
                ListRowLabel(title: "\u{2218}", subtitle: "Composed With")
                ListRowLabel(title: "\u{0040}", subtitle: "At")
                ListRowLabel(title: "space", subtitle: "Ignore")
                ListRowLabel(title: "\u{0021}", subtitle: "Exclamation Mark")
                ListRowLabel(title: "\u{0022}", subtitle: "Quotation Mark")
                ListRowLabel(title: "\u{0023}", subtitle: "Number Sign")
                ListRowLabel(title: "\u{0024}", subtitle: "Dollar Sign")
                ListRowLabel(title: "\u{007B}", subtitle: "Left Brace")
                ListRowLabel(title: "\u{0025}", subtitle: "Percent")
                ListRowLabel(title: "\u{007C}", subtitle: "Vertical Line")
                ListRowLabel(title: "\u{0026}", subtitle: "Ampersand")
                ListRowLabel(title: "\u{007D}", subtitle: "Right Brace")
                ListRowLabel(title: "\u{0027}", subtitle: "Apostrophe")
                ListRowLabel(title: "\u{007E}", subtitle: "Tilde")
                ListRowLabel(title: "\u{0028}", subtitle: "Left Paren")
                ListRowLabel(title: "\u{0029}", subtitle: "Right Paren")
                ListRowLabel(title: "\u{005B}", subtitle: "Left Square Bracket")
                ListRowLabel(title: "\u{005C}", subtitle: "Backslash")
                ListRowLabel(title: "\u{005D}", subtitle: "Right Square Bracket")
                ListRowLabel(title: "\u{005E}", subtitle: "Caret")
                ListRowLabel(title: "\u{005F}", subtitle: "Underscore")
                ListRowLabel(title: "tab", subtitle: "Tab")
                ListRowLabel(title: "\u{003A}", subtitle: "Colon")
                ListRowLabel(title: "\u{003B}", subtitle: "Semicolon")
                ListRowLabel(title: "\u{003C}", subtitle: "Less Than")
                ListRowLabel(title: "\u{003D}", subtitle: "Equals")
                ListRowLabel(title: "\u{003E}", subtitle: "Greater Than")
                ListRowLabel(title: "\u{003F}", subtitle: "Question Mark")
                ListRowLabel(title: "\u{003D}", subtitle: "Equals")
                ListRowLabel(title: "\u{002A}", subtitle: "Star")
                ListRowLabel(title: "\u{002B}", subtitle: "Plus")
                ListRowLabel(title: "\u{002C}", subtitle: "Comma")
                ListRowLabel(title: "\u{002D}", subtitle: "Hyphen")
                ListRowLabel(title: "\u{002E}", subtitle: "Period")
                ListRowLabel(title: "\u{002F}", subtitle: "Slash")
                ListRowLabel(title: "new line", subtitle: "New Line")
                ListRowLabel(title: "return", subtitle: "Return")
                ListRowLabel(title: "\u{2032}", subtitle: "Prime")
                ListRowLabel(title: "\u{2022}", subtitle: "Bullet")
                ListRowLabel(title: "\u{2010}", subtitle: "Hyphen")
                ListRowLabel(title: "\u{00B0}", subtitle: "Ignore")
                ListRowLabel(title: "\u{00B6}", subtitle: "Pilcrow")
                ListRowLabel(title: "\u{00A1}", subtitle: "Inverted Exclamation Mark")
                ListRowLabel(title: "\u{00A2}", subtitle: "Cent Sign")
                ListRowLabel(title: "\u{00A3}", subtitle: "Pound Sign")
                ListRowLabel(title: "\u{00A4}", subtitle: "Currency Sign")
                ListRowLabel(title: "\u{00A5}", subtitle: "Yen Sign")
                ListRowLabel(title: "\u{00A6}", subtitle: "Broken Bar")
                ListRowLabel(title: "\u{00A7}", subtitle: "Section Sign")
            }, header: {
                Text("Default Replacements")
            })
        }
    }
}

#Preview {
    PunctuationAllView()
}
