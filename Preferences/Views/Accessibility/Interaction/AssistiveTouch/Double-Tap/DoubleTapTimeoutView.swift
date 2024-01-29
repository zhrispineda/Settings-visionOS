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
            Section(content: {
                HStack(spacing: 15) {
                    Text("\(duration, specifier: "%.2f")")
                    Text("\(duration == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        duration -= 0.05
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration < 0.11)
                    Button(action: {
                        duration += 0.05
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration > 0.74)
                }
            }, header: {
                Text("Double-Tap Timeout")
            }, footer: {
                Text("The duration of time that two taps must occur within to activate the Double-Tap action.")
            })
        }
    }
}

#Preview {
    DoubleTapTimeoutView()
}
