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
                Button(action: {
                    selected = "Current Locale"
                }, label: {
                    HStack {
                        Text("Current Locale")
                        Spacer()
                        Image(systemName: "\(selected == "Current Locale" ? "checkmark" : "")")
                    }
                })
            }
            
            ForEach(languages, id: \.self) { language in
                Button(action: {
                    selected = language
                }, label: {
                    HStack {
                        Text(language)
                        Spacer()
                        Image(systemName: "\(selected == language ? "checkmark" : "")")
                    }
                })
            }
        }
    }
}

#Preview {
    DefaultLanguageView()
}
