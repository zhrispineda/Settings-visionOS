//
//  ShortNameView.swift
//  Preferences
//
//  Settings  > People > Short Name
//

import SwiftUI

struct ShortNameView: View {
    // Variables
    @State private var shortNameEnabled = true
    
    @State private var selectedOption: String? = "First Name Only"
    let options = ["First Name & Last Initial", "First Initial & Last Name", "First Name Only", "Last Name Only"]
    
    @State private var preferNicknamesEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("Short Name", isOn: $shortNameEnabled)
            }
            
            if shortNameEnabled {
                Section(content: {
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
                }, footer: {
                    Text("Short names are sometimes used to fit more names on screen. Chinese, Japanese, and Korean names are not affected by this setting.")
                })
            }
            
            Section(content: {
                Toggle("Prefer Nicknames", isOn: $preferNicknamesEnabled)
            }, footer: {
                Text("Always use nicknames when available.")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Short Name")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    ShortNameView()
}
