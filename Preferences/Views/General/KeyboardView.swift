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
    @State private var showingDictationEnableAlert = false
    @State private var showingDictationDisableAlert = false
    @State private var autoPunctuationEnabled = true
    
    @State private var lookToDictateEnabled = true
    
    var body: some View {
        CustomList(title: "Keyboards") {
            Section {
                ListRowNavigationLabel(title: "Keyboards", subtitle: "2", content: KeyboardsView())
                NavigationLink("Hardware Keyboard", destination: HardwareKeyboardView())
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
                    .alert("Enable Dictation?", isPresented: $showingDictationEnableAlert) {
                        Button("Enable Dictation") {}
                        Button("About Dictation & Privacy") { dictationEnabled = false } // Open popver
                        Button("Cancel", role: .cancel) { dictationEnabled = false }
                    } message: {
                        Text("When necessary, Dictation sends information like your voice input, contacts and location to Apple for processing your requests.")
                    }
                    .onChange(of: dictationEnabled, {
                        showingDictationEnableAlert = dictationEnabled
                    })
                    // TODO: Popover for when turning off dictation
                    .alert("Turn Off Dictation?", isPresented: $showingDictationDisableAlert) {
                        Button("Turn Off Dictation") {}
                        Button("Cancel", role: .cancel) { dictationEnabled = true }
                    } message: {
                        Text("The information Dictation uses to respond to your requests is also used for Siri and will remain on Apple servers unless Siri is also turned off.")
                    }
                Toggle("Auto-Punctuation", isOn: $autoPunctuationEnabled)
                if dictationEnabled {
                    NavigationLink(destination: DictationShortcutView(), label: {
                        HStack {
                            Text("Dictation Shortcut")
                            Spacer()
                            Label("Control", systemImage: "control").foregroundStyle(.secondary)
                        }
                    })
                }
            }, header: {
                Text("Dictation")
            }, footer: {
                Text("\(dictationEnabled ? "Dictation processes many voice inputs on \(UIDevice().name). Information will be sent to Apple in some cases. " : "")[About Dictation & Privacy...](#)")
            })
            
            if dictationEnabled {
                Section(content: {
                    Toggle("Look to Dictate", isOn: $lookToDictateEnabled)
                }, footer: {
                    Text("In Safari and supported search fields, focusing your eyes on the microphone will start Dictation.")
                })
            }
        }
    }
}

#Preview {
    KeyboardView()
}
