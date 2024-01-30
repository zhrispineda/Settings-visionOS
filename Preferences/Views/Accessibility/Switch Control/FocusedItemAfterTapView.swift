//
//  FocusedItemAfterTapView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Focused Item After Tap
//

import SwiftUI

struct FocusedItemAfterTapView: View {
    // Variables
    @State private var selected = "First Item"
    let options = ["First Item", "Current Item"]
    
    var body: some View {
        CustomList(title: "Focused Item After Tap") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selected = option
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                Text("The item that Switch Control scans after an item is tapped.")
            })
        }
    }
}

#Preview {
    FocusedItemAfterTapView()
}
