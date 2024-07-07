//
//  FocusedItemAfterTapView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Focused Item After Tap
//

import SwiftUI

struct FocusedItemAfterTapView: View {
    // Variables
    @State private var selected = "First Item"
    let options = ["First Item", "Current Item"]
    
    var body: some View {
        CustomList(title: "Focused Item After Tap") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("The item that Switch Control scans after an item is tapped.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        FocusedItemAfterTapView()
    }
}
