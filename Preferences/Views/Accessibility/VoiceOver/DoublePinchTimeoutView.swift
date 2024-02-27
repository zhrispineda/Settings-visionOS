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
                Stepper(
                    value: $timeout,
                    in: 0.25...2.00,
                    step: 0.05
                ) {
                    HStack {
                        Text("\(timeout, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(timeout == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
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
