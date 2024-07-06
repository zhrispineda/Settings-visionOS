//
//  PunctuationAllView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > All
//

import SwiftUI

struct PunctuationAllView: View {
    var body: some View {
        CustomList {
            Section("Default Replacements") {
                LabeledContent("\u{00BB}", value: "Right Double Arrows")
                LabeledContent("\u{00AB}", value: "Left Double Arrows")
                LabeledContent("\u{00AC}", value: "Not")
                LabeledContent("\u{2216}", value: "Set Minus")
                LabeledContent("\u{0060}", value: "Grave Accent")
                LabeledContent("\u{2218}", value: "Composed With")
                LabeledContent("\u{0040}", value: "At")
                LabeledContent("space", value: "Ignore")
                LabeledContent("\u{0021}", value: "Exclamation Mark")
                LabeledContent("\u{0022}", value: "Quotation Mark")
                LabeledContent("\u{0023}", value: "Number Sign")
                LabeledContent("\u{0024}", value: "Dollar Sign")
                LabeledContent("\u{007B}", value: "Left Brace")
                LabeledContent("\u{0025}", value: "Percent")
                LabeledContent("\u{007C}", value: "Vertical Line")
                LabeledContent("\u{0026}", value: "Ampersand")
                LabeledContent("\u{007D}", value: "Right Brace")
                LabeledContent("\u{0027}", value: "Apostrophe")
                LabeledContent("\u{007E}", value: "Tilde")
                LabeledContent("\u{0028}", value: "Left Paren")
                LabeledContent("\u{0029}", value: "Right Paren")
                LabeledContent("\u{005B}", value: "Left Square Bracket")
                LabeledContent("\u{005C}", value: "Backslash")
                LabeledContent("\u{005D}", value: "Right Square Bracket")
                LabeledContent("\u{005E}", value: "Caret")
                LabeledContent("\u{005F}", value: "Underscore")
                LabeledContent("tab", value: "Tab")
                LabeledContent("\u{003A}", value: "Colon")
                LabeledContent("\u{003B}", value: "Semicolon")
                LabeledContent("\u{003C}", value: "Less Than")
                LabeledContent("\u{003D}", value: "Equals")
                LabeledContent("\u{003E}", value: "Greater Than")
                LabeledContent("\u{003F}", value: "Question Mark")
                LabeledContent("\u{003D}", value: "Equals")
                LabeledContent("\u{002A}", value: "Star")
                LabeledContent("\u{002B}", value: "Plus")
                LabeledContent("\u{002C}", value: "Comma")
                LabeledContent("\u{002D}", value: "Hyphen")
                LabeledContent("\u{002E}", value: "Period")
                LabeledContent("\u{002F}", value: "Slash")
                LabeledContent("new line", value: "New Line")
                LabeledContent("return", value: "Return")
                LabeledContent("\u{2032}", value: "Prime")
                LabeledContent("\u{2022}", value: "Bullet")
                LabeledContent("\u{2010}", value: "Hyphen")
                LabeledContent("\u{00B0}", value: "Ignore")
                LabeledContent("\u{00B6}", value: "Pilcrow")
                LabeledContent("\u{00A1}", value: "Inverted Exclamation Mark")
                LabeledContent("\u{00A2}", value: "Cent Sign")
                LabeledContent("\u{00A3}", value: "Pound Sign")
                LabeledContent("\u{00A4}", value: "Currency Sign")
                LabeledContent("\u{00A5}", value: "Yen Sign")
                LabeledContent("\u{00A6}", value: "Broken Bar")
                LabeledContent("\u{00A7}", value: "Section Sign")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PunctuationAllView()
    }
}
