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
                HStack(spacing: 15) {
                    Text("\(time, specifier: "%.2f")")
                    Text("\(time == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        time -= 0.05
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(time < 0.054)
                    Button(action: {
                        time += 0.05
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(time > 24.99)
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
