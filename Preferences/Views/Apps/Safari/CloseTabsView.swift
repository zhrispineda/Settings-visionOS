//
//  CloseTabsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Close Tabs
//

import SwiftUI

struct CloseTabsView: View {
    // Variables
    @State private var selected = "Manually"
    let options = ["Manually", "After One Day", "After One Week", "After One Month"]
    
    var body: some View {
        CustomList(title: "Close Tabs") {
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
        CloseTabsView()
    }
}
