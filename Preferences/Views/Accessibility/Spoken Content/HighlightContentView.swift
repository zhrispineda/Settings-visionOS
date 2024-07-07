//
//  HighlightContentView.swift
//  Preferences
//
//  Settings > Accessibility > Spoken Content > Highlight Content
//

import SwiftUI

struct HighlightContentView: View {
    // Variables
    @State private var highlightContentEnabled = false
    @State private var selectedHighlightOption = "Words and Sentences"
    @State private var selectedHighlightStyle = "Underline"
    let highlightOptions = ["Words", "Sentences", "Words and Sentences"]
    let highlightStyles = ["Underline", "Background Color"]
    
    var body: some View {
        CustomList(title: "Highlight Content") {
            Section {
                Toggle("Highlight Content", isOn: $highlightContentEnabled.animation())
            }
            
            if highlightContentEnabled {
                Section {
                    Picker("", selection: $selectedHighlightOption) {
                        ForEach(highlightOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                }
                
                if selectedHighlightOption != "Words" {
                    Section("Sentence Highlight Style") {
                        Picker("", selection: $selectedHighlightStyle) {
                            ForEach(highlightStyles, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.inline)
                        .labelsHidden()
                    }
                }
                
                Section("Highlight Colors") {
                    if selectedHighlightOption == "Words and Sentences" {
                        ListRowNavigationLabel(title: "Word Color", subtitle: "Default", content: WordColorView(title: "Word Color"))
                    }
                    ListRowNavigationLabel(title: "Sentence Color", subtitle: "Default", content: WordColorView(title: "Sentence Color"))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        HighlightContentView()
    }
}
