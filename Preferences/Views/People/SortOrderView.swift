//
//  SortOrderView.swift
//  Preferences
//
//  Settings > People > Sort Order
//

import SwiftUI

struct SortOrderView: View {
    // Variables
    @State private var selectedOption: String? = "Last, First"
    let options = ["First, Last", "Last, First"]
    
    var body: some View {
        CustomList(title: "Sort Order") {
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
    SortOrderView()
}
