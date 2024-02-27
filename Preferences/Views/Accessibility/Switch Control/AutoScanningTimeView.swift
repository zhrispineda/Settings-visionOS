//
//  AutoScanningTime.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Auto Scanning Time
//

import SwiftUI

struct AutoScanningTimeView: View {
    @State private var time = 1.00
    
    var body: some View {
        CustomList(title: "Auto Scanning Time") {
            Section(content: {
                Stepper(
                    value: $time,
                    in: 0.05...25.00,
                    step: 0.05
                ) {
                    HStack {
                        Text("\(time, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(time == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            }, header: {
                Text("Auto Scanning Time")
            })
        }
    }
}

#Preview {
    AutoScanningTimeView()
}
