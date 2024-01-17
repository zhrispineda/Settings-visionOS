//
//  AddTextReplacementView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Text Replacement > Add
//

import SwiftUI

struct AddTextReplacementView: View {
    // Variables
    @State private var phraseText = String()
    @State private var shortcutText = String()
    
    var body: some View {
        List {
            Section(content: {
                HStack {
                    Text("Phrase")
                    TextField("", text: $phraseText)
                        .padding(.horizontal, 5)
                }
                HStack {
                    Text("Shortcut")
                    TextField("Optional", text: $shortcutText)
                        .padding(.horizontal, 5)
                }
            }, footer: {
                Text("Create a shortcut that will automatically expand into the word or phrase as you type.")
            })
        }
        .padding([.leading, .trailing], 30)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Text Replacement")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                Button("Save", action: {})
                    .disabled(phraseText.isEmpty)
            })
        }
    }
}

#Preview {
    AddTextReplacementView()
}
