//
//  DoubleTapTimeoutView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch > Double-Tap > Double-Tap Timeout
//

import SwiftUI

struct DoubleTapTimeoutView: View {
    // Variables
    @State private var duration = 0.30
    
    var body: some View {
        CustomList(title: "Double-Tap Timeout") {
            Section {
                Stepper(
                    value: $duration,
                    in: 0.10...0.75,
                    step: 0.05
                ) {
                    HStack {
                        Text("\(duration, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(duration == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            } header: {
                Text("Double-Tap Timeout")
            } footer: {
                Text("The duration of time that two taps must occur within to activate the Double-Tap action.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DoubleTapTimeoutView()
    }
}
