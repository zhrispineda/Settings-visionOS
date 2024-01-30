//
//  AudioVisualView.swift
//  Preferences
//
//  Settings > Accessibility > Audio & Visual
//

import SwiftUI

struct AudioVisualView: View {
    // Variables
    @State private var monoAudioEnabled = false
    @State private var balance = 0.00
    @State private var soundEffectsEnabled = true
    
    var body: some View {
        CustomList(title: "Audio & Visual") {
            Section(content: {
                Toggle("Mono Audio", isOn: $monoAudioEnabled)
            }, footer: {
                Text("Make the left and right speakers play the same content.")
            })
            
            Section(content: {
                VStack {
                    HStack {
                        Text("L")
                        Spacer()
                        Text("\(balance, specifier: "%.2f")")
                        Spacer()
                        Text("R")
                    }
                    .padding(.horizontal, 10)
                    Slider(value: $balance,
                           in: -1.00...1.00,
                           label: { Text("Stereo Balance") }
                    )
                    .colorMultiply(.gray)
                }
            }, header: {
                Text("Balance")
            }, footer: {
                Text("Adjust the audio volume balance between left and right channels.")
            })
            
            Section(content: {
                Toggle("Sound Effects", isOn: $soundEffectsEnabled)
            }, footer: {
                Text("Adjusts whether your \(UIDevice().name) plays sound effects when interacting with the controls.")
            })
        }
    }
}

#Preview {
    AudioVisualView()
}
