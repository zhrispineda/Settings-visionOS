//
//  LongPressDurationView.swift
//  Preferences
//
//  Settings > Accessibility > AssistiveTouch > Long Press > Long Press Duration
//

import SwiftUI

struct LongPressDurationView: View {
    // Variables
    @State private var duration = 0.75
    
    var body: some View {
        CustomList(title: "Long Press Duration") {
            Section(content: {
                HStack(spacing: 15) {
                    Text("\(duration, specifier: "%.2f")")
                    Text("\(duration == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        duration -= 0.10
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration < 0.21)
                    Button(action: {
                        duration += 0.10
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration > 7.99)
                }
            }, header: {
                Text("Double-Tap Timeout")
            }, footer: {
                Text("The duration of time required to activate the Long Press action.")
            })
        }
    }
}

#Preview {
    LongPressDurationView()
}
