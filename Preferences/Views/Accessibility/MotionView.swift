//
//  MotionView.swift
//  Preferences
//
//  Settings > Accessibility > Motion
//

import SwiftUI

struct MotionView: View {
    // Variables
    @State private var reduceMotionEnabled = false
    @State private var preferCrossFadeAnimationsEnabled = false
    @State private var autoPlayMessageEffectsEnabled = true
    @State private var autoPlayAnimatedImagesEnabled = true
    @State private var autoPlayVideoPreviews = true
    @State private var limitFrameRate = false
    
    var body: some View {
        CustomList(title: "Motion") {
            Section(content: {
                Toggle("Reduce Motion", isOn: $reduceMotionEnabled)
            }, footer: {
                Text("Reduce the motion of the user interface, including the parallax effect of icons.")
            })
            
            if reduceMotionEnabled {
                Section(content: {
                    Toggle("Prefer Cross-Fade Transitions", isOn: $preferCrossFadeAnimationsEnabled)
                }, footer: {
                    Text("Reduce the motion for user interface controls that slide in when appearing and disappearing.")
                })
            }
            
            Section(content: {
                Toggle("Auto-Play Message Effects", isOn: $autoPlayMessageEffectsEnabled)
            }, footer: {
                Text("Allows fullscreen effects in the Messages app to auto-play.")
            })
            
            Section(content: {
                Toggle("Auto-Play Animated Images", isOn: $autoPlayAnimatedImagesEnabled)
            }, footer: {
                Text("Controls whether images animate on the Web or in apps.")
            })
            
            Section {
                Toggle("Auto-Play Video Previews", isOn: $autoPlayVideoPreviews)
            }
            
            Section(content: {
                Toggle("Limit Frame Rate", isOn: $limitFrameRate)
            }, footer: {
                Text("Sets the maximum frame rate of the display to 60 frames per second.")
            })
        }
    }
}

#Preview {
    MotionView()
}
