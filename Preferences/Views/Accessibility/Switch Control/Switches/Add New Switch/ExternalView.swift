//
//  ExternalView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Switches > Add New Switch... > External
//

import SwiftUI

struct ExternalView: View {
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                Text("**Activate your external switch**")
                Text("External switches can be Bluetooth, Game Controllers, MIDI, or Made for iPhone\nAssistive Switch Controld devices.")
                    .multilineTextAlignment(.center)
                    .font(.callout)
                    .padding()
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("External")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            }
        }
    }
}

#Preview {
    ExternalView()
}
