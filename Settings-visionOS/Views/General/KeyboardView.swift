//
//  KeyboardsView.swift
//  Settings-visionOS
//
//  Setting > General > Keyboard
//

import SwiftUI

struct KeyboardView: View {
    // Variables
    @State private var autoCapitalizationEnabled = true
    @State private var autoCorrectionEnabled = true
    @State private var checkSpellingEnabled = true
    @State private var capsLockEnabled = true
    @State private var predictiveEnabled = true
    @State private var smartPunctuationEnabled = true
    @State private var periodShortcutEnabled = true
    
    @State private var dictationEnabled = true
    @State private var autoPunctuationEnabled = true
    
    @State private var lookToDictateEnabled = true
    
    var body: some View {
        List {
            Section {
                ListRowNavigationLabel(title: "Keyboards", subtitle: "2", content: AnyView(KeyboardsView()))
                NavigationLink("Hardware Keyboard", destination: AnyView(HardwareKeyboardView()))
            }
            
            Section {
                NavigationLink("Text Replacement", destination: TextReplacementView())
            }
            
            Section(content: {
                Toggle("Auto-Capitalization", isOn: $autoCapitalizationEnabled)
                Toggle("Auto-Correction", isOn: $autoCapitalizationEnabled)
                Toggle("Check Spelling", isOn: $autoCapitalizationEnabled)
                Toggle("Enable Caps Lock", isOn: $autoCapitalizationEnabled)
                Toggle("Predictive", isOn: $autoCapitalizationEnabled)
                Toggle("Smart Punctuation", isOn: $autoCapitalizationEnabled)
                Toggle("\u{201C}.\u{201D} Shortcut", isOn: $autoCapitalizationEnabled)
            }, header: {
                Text("All Keyboards")
            }, footer: {
                Text("Double tapping the space bar will insert a period followed by a space.")
            })
            
            Section(content: {
                Toggle("Enable Dictation", isOn: $dictationEnabled)
                Toggle("Auto-Punctuation", isOn: $autoPunctuationEnabled)
                NavigationLink(destination: DictationShortcutView(), label: {
                    HStack {
                        Text("Dictation Shortcut")
                        Spacer()
                        Label("Control", systemImage: "control").foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Dictation")
            }, footer: {
                Text("Dictation processes many voice inputs on Apple Vision Pro. Information will be sent to Apple in some cases. [About Dictation & Privacy...](#)")
            })
            
            Section(content: {
                Toggle("Look to Dictate", isOn: $lookToDictateEnabled)
            }, footer: {
                Text("In Safari and supported search fields, focusing your eyes on the microphone will start Dictation.")
            })
        }
        .padding([.leading, .trailing], 25)
        .navigationTitle("Keyboards")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Keyboards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    KeyboardView()
}
