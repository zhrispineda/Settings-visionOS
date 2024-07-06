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
    @State private var selected = "First Name Only"
    let options = ["First Name & Last Initial", "First Initial & Last Name", "First Name Only", "Last Name Only"]
    
    @State private var preferNicknamesEnabled = true
    
    var body: some View {
        CustomList(title: "Short Name") {
            Section {
                Toggle("Short Name", isOn: $shortNameEnabled)
            }
            
            if shortNameEnabled {
                Section {
                    Picker("", selection: $selected) {
                        ForEach(options, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                } footer: {
                    Text("Short names are sometimes used to fit more names on screen. Chinese, Japanese, and Korean names are not affected by this setting.")
                }
            }
            
            Section {
                Toggle("Prefer Nicknames", isOn: $preferNicknamesEnabled)
            } footer: {
                Text("Always use nicknames when available.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ShortNameView()
    }
}
