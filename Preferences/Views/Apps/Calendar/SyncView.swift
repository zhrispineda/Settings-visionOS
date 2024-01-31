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
        List(options, id: \.self) { option in
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
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Sync").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    SyncView()
}
