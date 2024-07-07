//
//  DwellControlView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Dwell Control
//

import SwiftUI

struct DwellControlView: View {
    // Variables
    @State private var dwellControlEnabled = false
    @State private var duration = 1.00
    @State private var highlightControl = false
    
    var body: some View {
        CustomList(title: "Dwell Control") {
            Section {
                Toggle("Dwell Control", isOn: $dwellControlEnabled)
                ListRowNavigationLabel(title: "Target", subtitle: "Automatic", content: TargetView())
                NavigationLink("Movement Tolerance", destination: MovementToleranceView())
                Stepper(
                    value: $duration,
                    in: 0.25...8.00,
                    step: 0.25
                ) {
                    HStack {
                        Text("\(duration, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(duration == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            }
            
            Section {
                Toggle("Highlight Control", isOn: $highlightControl)
            } footer: {
                Text("When enabled, an outline will show around the control that will be pressed when the dwell timer elapses.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DwellControlView()
    }
}
