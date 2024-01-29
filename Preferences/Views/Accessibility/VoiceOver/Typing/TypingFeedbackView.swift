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
    let softwareKeyboards = ["Nothing", "Characters", "Words", "Characters and Words"]
    let hardwareKeyboards = ["Nothing", "Characters", "Words", "Characters and Words"]
    
    var body: some View {
        CustomList(title: "Typing Feedback") {
            Section(content: {
                ForEach(softwareKeyboards, id: \.self) { keyboard in
                    Button(action: {
                        softwareKeyboardSelection = keyboard
                    }, label: {
                        HStack {
                            Text(keyboard)
                            Spacer()
                            if softwareKeyboardSelection == keyboard {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Software Keyboards")
            })
            
            Section(content: {
                ForEach(hardwareKeyboards, id: \.self) { keyboard in
                    Button(action: {
                        hardwareKeyboardSelection = keyboard
                    }, label: {
                        HStack {
                            Text(keyboard)
                            Spacer()
                            if hardwareKeyboardSelection == keyboard {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Hardware Keyboards")
            })
        }
    }
}

#Preview {
    NavigationStack {
        TypingFeedbackView()
    }
}
