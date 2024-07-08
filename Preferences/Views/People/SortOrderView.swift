//
//  SortOrderView.swift
//  Preferences
//
//  Settings > People > Sort Order
//

import SwiftUI

struct SortOrderView: View {
    // Variables
    @State private var selected = "Last, First"
    let options = ["First, Last", "Last, First"]
    
    var body: some View {
        CustomList(title: "Sort Order") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        SortOrderView()
    }
}
