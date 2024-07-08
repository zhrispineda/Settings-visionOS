//
//  RemoveDownloadListItemsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Downloads > Remove Download List Items
//

import SwiftUI

struct RemoveDownloadListItemsView: View {
    // Variables
    @State private var selected = "After one day"
    let options = ["After one day", "Upon successful download", "Manually"]
    
    var body: some View {
        CustomList(title: "Remove Download List Items") {
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
        RemoveDownloadListItemsView()
    }
}
