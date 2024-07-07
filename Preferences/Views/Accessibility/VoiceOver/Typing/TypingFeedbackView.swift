//
//  TypingFeedbackView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Typing > Typing Feedback
//

import SwiftUI

struct TypingFeedbackView: View {
    // Variables
    @State private var softwareKeyboardSelection = "Characters and Words"
    @State private var hardwareKeyboardSelection = "Characters and Words"
    let keyboards = ["Nothing", "Characters", "Words", "Characters and Words"]
    
    var body: some View {
        CustomList(title: "Typing Feedback") {
            Section("Software Keyboards") {
                Picker("", selection: $softwareKeyboardSelection) {
                    ForEach(keyboards, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            Section("Hardware Keyboards") {
                Picker("", selection: $hardwareKeyboardSelection) {
                    ForEach(keyboards, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
    }
}

#Preview {
    NavigationStack {
        TypingFeedbackView()
    }
}
