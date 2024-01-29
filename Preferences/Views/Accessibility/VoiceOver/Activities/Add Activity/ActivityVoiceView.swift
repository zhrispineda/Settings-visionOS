//
//  ActivityVoiceView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities > Add Activity... > Voice
//

import SwiftUI

struct ActivityVoiceView: View {
    // Variables
    var title = "Voice"
    let languages = ["English", "Arabic", "Bangla", "Basque", "Bhojpuri", "Bulgarian", "Catalan", "Chinese", "Croatian", "Czech", "Danish", "Dutch", "Finnish", "French", "Galician", "German", "Greek", "Hebrew", "Hindi", "Hungarian", "Indonesian", "Italian", "Japanese", "Kannada", "Korean", "Malay", "Marathi", "Norwegian Bokmål", "Persian", "Polish", "Portuguese", "Romanian", "Russian", "Shanghainese", "Slovak", "Slovenian", "Spanish", "Swedish", "Tamil", "Telugu", "Thai", "Turkish", "Ukrainian", "Vietnamese"]
    let voices = ["Samantha", "Majed", "", "", "", "Daria", "Montse", "Tingting", "Lana", "Zuzuna", "Sara", "Xander", "Satu", "Thomas", "", "Anna", "Melina", "Carmit", "Lekha", "Tünde", "Damayanti", "Alice", "Kyoko", "", "Yuna", "Amira", "", "Nora", "", "Zosia", "Luciana", "Ioana", "Milena", "", "Laura", "", "Paulina", "Alva", "", "", "Kanya", "Yelda", "Lesya", "Lihn"]
    
    var body: some View {
        CustomList(title: title) {
            if title == "Voice" {
                ForEach(languages, id: \.self) { language in
                    NavigationLink(language, destination: VoiceView(title: language))
                }
            } else {
                ForEach(Array(languages.enumerated()), id: \.offset) { index, language in
                    ListRowNavigationLabel(title: language, subtitle: voices[index], content: VoiceView(title: language))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActivityVoiceView(title: "Voices")
    }
}
