//
//  DefaultLanguageView.swift
//  Preferences
//
//  Settings > Accessibility > Spoken Content > Default Language
//

import SwiftUI

struct DefaultLanguageView: View {
    // Variables
    let languages = ["English", "Arabic", "Bangla", "Basque", "Bhojpuri", "Bulgarian", "Catalan", "Chinese", "Croatian", "Czech", "Danish", "Dutch", "Finnish", "French", "Galician", "German", "Greek", "Hebrew", "Hindi", "Hungarian", "Indonesian", "Italian", "Japanese", "Kannada", "Korean", "Malay", "Marathi", "Norwegian Bokmål", "Persian", "Polish", "Portuguese", "Romanian", "Russian", "Shanghainese", "Slovak", "Slovenian", "Spanish", "Swedish", "Tamil", "Telugu", "Thai", "Turkish", "Ukrainian", "Vietnamese"]
    @State private var selected = "Current Locale"
    
    var body: some View {
        CustomList(title: "Default Language") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(["Current Locale"], id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            Section {
                Picker("", selection: $selected) {
                    ForEach(languages, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
    }
}

#Preview {
    NavigationStack {
        DefaultLanguageView()
    }
}
