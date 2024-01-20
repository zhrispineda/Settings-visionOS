//
//  DictationShortcutView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Dictation Shortcut
//

import SwiftUI

struct DictationShortcutView: View {
    // Variables
    @State private var selectedOption: String? = "Control"
    let options = ["Control", "Command", "None"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: { selectedOption = option }, label: {
                        HStack {
                            if option == "None" {
                                Text(option)
                            } else {
                                Text(Image(systemName: "\(option.lowercased())")) + Text("\t" + option)
                            }
                            Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Press twice to start dictation:")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Dictation Shortcut")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    DictationShortcutView()
}
