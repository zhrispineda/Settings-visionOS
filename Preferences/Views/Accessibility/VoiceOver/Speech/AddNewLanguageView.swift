//
//  AddNewLanguageView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech > Add New Language...
//

import SwiftUI

struct AddNewLanguageView: View {
    let languages = ["English (South Africa)", "English (India)", "English (Scotland, UK)", "English (UK)", "English (Australia)", "English (US)", "English (Ireland)", "Arabic (World)", "Bangla (India)", "Basque (Spain)", "Bhojpuri (India)", "Bulgarian (Bulgaria)", "Catalan (Spain)", "Chinese (Liaoning, China mainland)", "Chinese (Sichuan, China mainland)", "Chinese (China mainland)", "Chinese (Shaanxi, China mainland)", "Chinese (Hong Kong)", "Chinese (Taiwan)", "Croatian (Croatia)", "Czech (Czechia)", "Danish (Denmark)", "Dutch (Belgium)", "Dutch (Netherlands)", "Finnish (Finland)", "French (Belgium)", "French (Canada)", "French (France)", "Galician (Spain)", "German (Germany)", "Greek (Greece)", "Hebrew (Israel)", "Hindi (Indian)", "Hungarian (Hungary)", "Indonesian (Indonesia)", "Italian (Italy)", "Japanese (Japan)", "Kannada (India)", "Korean (South Korea)", "Malay (Malaysia)", "Marathi (India)", "Norwegian Bokmål (Norway)", "Persian (Iran)", "Polish (Poland)", "Portugese (Brazil)", "Portugese (Portugal)", "Romanian (Romania)", "Russian (Russia)", "Shanghainese (China mainland)", "Slovak (Slovakia)", "Slovenian (Slovenia)", "Spanish (Argentina)", "Spanish (Chile)", "Spanish (Columbia)", "Spanish (Mexico)", "Spanish (Spain)", "Swedish (Sweden)", "Tamil (India)", "Telugu (India)", "Thai (Thailand)", "Turkish (Türkiye)", "Ukrainian (Ukraine)", "Valencian (Spain)", "Vietnamese (Vietnam)"]
    
    var body: some View {
        CustomList(title: "Add New Language...") {
            ForEach(languages, id: \.self) { language in
                Button(language) {}
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddNewLanguageView()
    }
}
