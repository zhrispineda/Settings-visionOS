//
//  RemoveDownloadListItemsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Downloads > Remove Download List Items
//

import SwiftUI

struct RemoveDownloadListItemsView: View {
    // Variables
    @State private var selectedOption: String? = "After one day"

    let options = ["After one day", "Upon successful download", "Manually"]
    
    var body: some View {
        List(options, id: \.self) { option in
            Button(action: { selectedOption = option }, label: {
                HStack {
                    Text(option)
                    Spacer()
                    if selectedOption == option { Image(systemName: "checkmark") }
                }
            })
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Remove Download List Items")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    RemoveDownloadListItemsView()
}
