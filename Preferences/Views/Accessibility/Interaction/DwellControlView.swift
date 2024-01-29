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
                HStack(spacing: 15) {
                    Text("\(duration, specifier: "%.2f")")
                    Text("\(duration == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        duration -= 0.25
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration < 0.26)
                    Button(action: {
                        duration += 0.25
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration > 7.99)
                }
            }
            
            Section(content: {
                Toggle("Highlight Control", isOn: $highlightControl)
            }, footer: {
                Text("When enabled, an outline will show around the control that will be pressed when the dwell timer elapses.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        DwellControlView()
    }
}
