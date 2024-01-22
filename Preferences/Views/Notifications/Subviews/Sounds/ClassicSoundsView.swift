//
//  ClassicSoundsView.swift
//  Preferences
//
//  Settings > Notifications > FaceTime > Sounds > Classic
//

import SwiftUI

struct ClassicSoundsView: View {
    // Variables
    let soundNames = ["Alarm", "Apex", "Ascending", "Bark", "Beacon", "Bell Tower", "Blues", "Boing", "Bulletin", "By The Seaside", "Chimes", "Circuit", "Constellation", "Cosmic", "Crickets", "Crystals", "Digital", "Doorbell", "Duck", "Harp", "Hillside", "Illuminate", "Marimba", "Motorcycle", "Night Owl", "Old Car Horn", "Old Phone", "Opening", "Piano Riff", "Pinball", "Playtime", "Presto", "Radar", "Radiate", "Ripples", "Robot", "Sci-Fi", "Sencha", "Signal", "Silk", "Slow Rise", "Sonar", "Stargaze", "Strum", "Summit", "Timba", "Time Passing", "Trill", "Twinkle", "Uplift", "Waves", "Xylophone"]
    
    var body: some View {
        List(soundNames, id: \.self) { sound in
            Button(action: {}, label: { Label(sound, systemImage: "empty") })
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: {
                Text("Classic").font(.title2)
            })
        }
    }
}

#Preview {
    ClassicSoundsView()
}
