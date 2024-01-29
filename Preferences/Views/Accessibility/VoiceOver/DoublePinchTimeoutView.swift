//
//  DoublePinchTimeoutView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Double-pinch Timeout
//

import SwiftUI

struct DoublePinchTimeoutView: View {
    // Variables
    @State private var timeout = 0.25
    
    var body: some View {
        CustomList(title: "Double-pinch Timeout") {
            Section(content: {
                HStack(spacing: 15) {
                    Text("\(timeout, specifier: "%.2f")")
                    Text("\(timeout == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        timeout -= 0.05
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(timeout < 0.25)
                    Button(action: {
                        timeout += 0.05
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(timeout > 1.99)
                }
            }, header: {
                Text("Double-pinch Timeout")
            }, footer: {
                Text("Two pinches that occur within the specified timeout will perform a double pinch in VoiceOver.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        DoublePinchTimeoutView()
    }
}
