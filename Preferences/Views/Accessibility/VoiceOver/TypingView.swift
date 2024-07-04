//
//  TypingView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Typing
//

import SwiftUI

struct TypingView: View {
    var body: some View {
        CustomList(title: "Typing") {
            ListRowNavigationLabel(title: "Typing Style", subtitle: "Standard Typing", content: OnOffView(title: "Typing Style", selected: "Standard Typing", options: ["Standard Typing", "Touch Typing", "Direct Touch Typing"]))
            ListRowNavigationLabel(title: "Phonetic Feedback", subtitle: "Character and Phonetics", content: OnOffView(title: "Phonetic Feedback", selected: "Character and Phonetics", options: ["Off", "Character and Phonetics", "Phonetics Only"]))
            ListRowNavigationLabel(title: "Typing Feedback", subtitle: "", content: TypingFeedbackView())
            ListRowNavigationLabel(title: "Modifier Keys", subtitle: "Control + Option", content: ActivityModifierKeysView(selected: ["Control + Option"]))
            ListRowNavigationLabel(title: "Keyboard Interaction Time", subtitle: "1s", content: KeyboardInteractionTimeView())
        }
    }
}

#Preview {
    NavigationStack {
        TypingView()
    }
}
