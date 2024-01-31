//
//  SyncView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Sync
//

import SwiftUI

struct SyncView: View {
    // Variables
    @State private var selectedOption: String? = "All Events"

    let options = ["Events 2 Weeks Back", "Events 1 Month Back", "Events 3 Months Back", "Events 6 Months Back", "All Events"]
    
    var body: some View {
        CustomList(title: "Sync") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    SyncView()
}
