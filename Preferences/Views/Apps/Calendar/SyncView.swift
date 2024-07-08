//
//  SyncView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Sync
//

import SwiftUI

struct SyncView: View {
    // Variables
    @State private var selected = "All Events"
    let options = ["Events 2 Weeks Back", "Events 1 Month Back", "Events 3 Months Back", "Events 6 Months Back", "All Events"]
    
    var body: some View {
        CustomList(title: "Sync") {
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
        SyncView()
    }
}
