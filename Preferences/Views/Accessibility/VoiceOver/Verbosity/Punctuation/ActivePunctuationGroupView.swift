//
//  ActivePunctuationGroupView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation > Active Punctuation Group
//

import SwiftUI

struct ActivePunctuationGroupView: View {
    // Variables
    let systemGroups = ["All", "Some", "None"]
    @State private var selection = "Some"
    
    var body: some View {
        CustomList(title: "Active Punctuation Group") {
            Section(content: {
                ForEach(systemGroups, id: \.self) { option in
                    Button(action: {
                        selection = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selection == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("System Groups")
            })
        }
    }
}

#Preview {
    ActivePunctuationGroupView()
}
