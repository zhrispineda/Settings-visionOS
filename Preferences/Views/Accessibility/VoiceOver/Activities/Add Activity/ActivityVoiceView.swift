//
//  ActivityVoiceView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities > Add Activity... > Voice
//

import SwiftUI

struct ActivityVoiceView: View {
    // Variables
    let languages = ["English", "Arabic", "Bangla", "Basque", "Bhojpuri", "Bulgarian", "Catalan", "Chinese", "Croatian", "Czech", "Danish", "Dutch", "Finnish", "French", "Galician", "German", "Greek", "Hebrew", "Hindi", "Hungarian", "Indonesian", "Italian", "Japanese", "Kannada", "Korean", "Malay", "Marathi", "Norwegian Bokmål", "Persian", "Polish", "Portuguese", "Romanian", "Russian", "Shanghainese", "Slovak", "Slovenian", "Spanish", "Swedish", "Tamil", "Telugu", "Thai", "Turkish", "Ukrainian", "Vietnamese"]
    
    var body: some View {
        CustomList(title: "Voice") {
            ForEach(languages, id: \.self) { language in
                NavigationLink(language, destination: VoiceView(title: language))
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActivityVoiceView()
    }
}
