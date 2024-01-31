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
        CustomList(title: "Remove Download List Items") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option { Image(systemName: "checkmark") }
                    }
                })
            }
        }
    }
}

#Preview {
    RemoveDownloadListItemsView()
}
