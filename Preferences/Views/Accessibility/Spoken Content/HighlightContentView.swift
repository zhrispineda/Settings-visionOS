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
    let highlightOptions = ["Words", "Sentences", "Words and Sentences"]
    @State private var selectedHighlightStyle = "Underline"
    let highlightStyles = ["Underline", "Background Color"]
    
    var body: some View {
        CustomList(title: "Highlight Content") {
            Section {
                Toggle("Highlight Content", isOn: $highlightContentEnabled.animation())
            }
            
            if highlightContentEnabled {
                Section {
                    ForEach(highlightOptions, id: \.self) { option in
                        Button(action: {
                            withAnimation {
                                selectedHighlightOption = option
                            }
                        }, label: {
                            HStack {
                                Text(option)
                                Spacer()
                                Image(systemName: "\(selectedHighlightOption == option ? "checkmark" : "")")
                            }
                        })
                    }
                }
                
                if selectedHighlightOption != "Words" {
                    Section(content: {
                        ForEach(highlightStyles, id: \.self) { option in
                            Button(action: {
                                withAnimation {
                                    selectedHighlightStyle = option
                                }
                            }, label: {
                                HStack {
                                    Text(option)
                                    Spacer()
                                    Image(systemName: "\(selectedHighlightStyle == option ? "checkmark" : "")")
                                }
                            })
                        }
                    }, header: {
                        Text("Sentence Highlight Style")
                    })
                }
                
                Section(content: {
                    if selectedHighlightOption == "Words and Sentences" {
                        ListRowNavigationLabel(title: "Word Color", subtitle: "Default", content: WordColorView(title: "Word Color"))
                    }
                    ListRowNavigationLabel(title: "Sentence Color", subtitle: "Default", content: WordColorView(title: "Sentence Color"))
                }, header: {
                    Text("Highlight Colors")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        HighlightContentView()
    }
}
