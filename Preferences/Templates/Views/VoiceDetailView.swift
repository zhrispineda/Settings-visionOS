//
//  VoiceDetailView.swift
//  Preferences
//
//  Template for managing the selected voice in Accessibility settings
//
//  Parameters:
//  language: String, voice: String
//
//  Example: VoiceDetailView(language: "English (US)", voice: "Samantha")
//

import SwiftUI

struct VoiceDetailView: View {
    var language = String()
    var voice = String()
    @State private var speakingRate = 0.5
    
    var body: some View {
        CustomList(title: voice) {
            Section {
                HStack {
                    Image(systemName: "play.circle")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading) {
                        Text(voice)
                        Text("Using \(Int.random(in: 11..<250)) MB")
                            .font(.caption)
                    }
                    Spacer()
                    if voice == "Samantha" {
                        Image(systemName: "checkmark")
                            .foregroundStyle(.blue)
                    } else {
                        Image(systemName: "icloud.and.arrow.down")
                            .foregroundStyle(.blue)
                    }
                }
            } header: {
                Text(language)
            }
            
            Section {
                Group {
                    Slider(value: $speakingRate,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Speaking Rate") }
                    )
                }
                .imageScale(.large)
            } header: {
                Text("Speaking Rate")
            }
        }
    }
}

#Preview {
    NavigationStack {
        VoiceDetailView(language: "English (US)", voice: "Samantha")
    }
}
