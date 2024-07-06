//
//  DisplayOrderView.swift
//  Preferences
//
//  Settings > People > Display Order
//

import SwiftUI

struct DisplayOrderView: View {
    // Variables
    @State private var selected = "First, Last"
    let options = ["First, Last", "Last, First"]
    
    var body: some View {
        CustomList(title: "Display Order") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Names in some languages such as Chinese, Japanese, and Korean follow a fixed order and will not be affected.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DisplayOrderView()
    }
}
