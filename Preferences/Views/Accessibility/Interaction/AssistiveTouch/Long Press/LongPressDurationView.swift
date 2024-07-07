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
            Section {
                Stepper(
                    value: $duration,
                    in: 0.20...8.00,
                    step: 0.10
                ) {
                    HStack {
                        Text("\(duration, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(duration == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            } header: {
                Text("Long Press Duration")
            } footer: {
                Text("The duration of time required to activate the Long Press action.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        LongPressDurationView()
    }
}
