//
//  CloseTabsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Close Tabs
//

import SwiftUI

struct CloseTabsView: View {
    // Variables
    @State private var selectedOption: String? = "Manually"

    let options = ["Manually", "After One Day", "After One Week", "After One Month"]
    
    var body: some View {
        CustomList(title: "Close Tabs") {
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
    CloseTabsView()
}
