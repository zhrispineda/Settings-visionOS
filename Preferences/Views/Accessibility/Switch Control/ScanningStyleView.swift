//
//  ScanningStyleView.swift
//  Preferences
//
//  Settings > Views > Accessibility > Switch Control > Scanning Style
//

import SwiftUI

struct ScanningStyleView: View {
    // Variables
    @State private var selected = "Auto Scanning"
    let options = ["Auto Scanning", "Manual Scanning", "Single Switch Step Scanning"]
    
    var body: some View {
        CustomList(title: "Scanning Style") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                Text("""
                    Auto Scanning moves focus automatically after a specified duration.
                    
                    Manual Scanning requires a switch to be engaged to move focus, and a second switch to activate items.
                    
                    Single Switch Step Scanning requires a switch to be engaged to move focus. If no action is taken within a specified duration, the item with focus is automatically activated.
                    """)
            })
        }
    }
}

#Preview {
    ScanningStyleView()
}
