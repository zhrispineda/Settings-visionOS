//
//  VoiceView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech > Voice
//

import SwiftUI

struct VoiceView: View {
    // Variables
    var title = "English"
    
    // English
    let enUSVoices = ["Agnes", "Alex", "Allison", "Ava", "Bruce", "Evan", "Fred", "Joelle", "Junior", "Kathy", "Nathan", "Nicky", "Noelle", "Ralph", "Samantha", "Siri", "Susan", "Tom", "Vicki", "Victoria", "Zoe"]
    let enAUVoices = ["Karen", "Lee", "Matilda", "Siri"]
    let enINVoices = ["Isha", "Rishi", "Sangeeta", "Siri", "Veena"]
    let enIRVoices = ["Moira", "Siri"]
    let enSUKVoices = ["Fiona"]
    let enSAVoices = ["Siri", "Tessa"]
    let enUKVoices = ["Daniel", "Jamie", "Kate", "Oliver", "Serena", "Siri", "Stephanie"]
    let noveltyVoices = ["Albert", "Bad News", "Bahh", "Bells", "Boing", "Bubbles", "Cellos", "Good News", "Jupiter", "Jester", "Organ", "Superstar", "Trinoids", "Whisper", "Wobble", "Zarvox"]
    
    // Arabic
    let arabicVoices = ["Laila", "Majed", "Mariam", "Tarik"]
    
    // Bangla
    let banglaVoices = ["Piya"]
    
    // Basque
    let basqueVoices = ["Miren"]
    
    // Bhojpuri
    let bhojpuriVoices = ["Jaya"]
    
    // Bulgarian
    let bulgarianVoices = ["Daria"]
    
    // Catalan
    let catalanVoices = ["Jordi", "Montse"]
    let valencianVoices = ["Pau"]
    
    // Chinese
    let chineseMainlandVoices = ["Binbin", "Bobo", "Han", "Lanlan", "Lili", "Lilian", "Lisheng", "Shanshan", "Shasha", "Taotao", "Tiantian", "Tingting", "Yu-shu", "Yue"]
    let chineseHongKongVoices = ["Aasing", "Sinji"]
    let chineseLiaoningVoices = ["Dongmei"]
    let chineseShaanxiVoices = ["Haohao"]
    let chineseSichuanVoices = ["Panpan"]
    let chineseTaiwanVoices = ["Meijia"]
    
    // Croatian
    let croatianVoices = ["Lana"]
    
    // Czech
    let czechVoices = ["Iveta", "Zuzana"]
    
    // Danish
    let danishVoices = ["Magnus", "Sara"]
    
    // Dutch
    let dutchBelgiumVoices = ["Ellen"]
    let dutchNetherlands = ["Claire", "Xander"]
    
    // Finnish
    let finnishVoices = ["Onni", "Satu"]
    
    // French
    let frenchBelgiumVoices = ["Aude"]
    let frenchCanadaVoices = ["Amélie", "Chantal", "Nicolas"]
    let frenchFranceVoices = ["Audrey", "Aurélie", "Thomas"]
    
    // Galician
    let galicianVoices = ["Carmela"]
    
    // German
    let germanVoices = ["Anna", "Markus", "Petra", "Viktor", "Yannick"]
    
    // Greek
    let greekVoices = ["Melina", "Nikos"]
    
    // Hebrew
    let hebrewVoices = ["Carmit"]
    
    // Hindi
    let hindiVoices = ["Kiyara", "Lekha", "Neel"]
    
    // Hungarian
    let hungarianVoices = ["Tünde"]
    
    // Indonesian
    let indonesianVoices = ["Damayanti"]
    
    // Italian
    let italianVoices = ["Alice", "Emma", "Federica", "Luca", "Paola"]
    
    // Japanese
    let japaneseVoices = ["Kyoko", "Otoya"]
    
    // Kannada
    let kannadaVoices = ["Soumya"]
    
    // Korean
    let koreanVoices = ["Jian", "Minsu", "Sora", "Suhyun", "Yuna"]
    
    // Malay
    let malayVoices = ["Amira"]
    
    // Marathi
    let marathiVoices = ["Ananya"]
    
    // Norwegian Bokmål
    let norwegianVoices = ["Henrik", "Nora"]
    
    // Persian
    let persianVoices = ["Dariush"]
    
    // Polish
    let polishVoices = ["Ewa", "Krysztof", "Zosia"]
    
    // Portuguese
    let portugueseBrazilVoices = ["Felipe", "Fernanda", "Luciana"]
    let portuguesePortugalVoices = ["Catarina", "Joana", "Joaquim"]
    
    // Romanian
    let romanianVoices = ["Ioana"]
    
    // Russian
    let russianVoices = ["Katya", "Milena", "Yuri"]
    
    // Shanghainese
    let shanghaineseVoices = ["Nannan"]
    
    // Slovak
    let slovakVoices = ["Laura"]
    
    // Slovenian
    let slovenianVoices = ["Tina"]
    
    // Spanish
    let spanishArgentinaVoices = ["Diego", "Isabela"]
    let spanishChileVoices = ["Francisca"]
    let spanishColumbiaVoices = ["Carlos", "Jimena", "Soledad"]
    let spanishMexicoVoices = ["Angélica", "Juan", "Paulina"]
    let spanishSpainVoices = ["Jorge", "Marisol", "Mónica"]
    
    // Swedish
    let swedishVoices = ["Alva", "Klara", "Oskar"]
    
    // Tamil
    let tamilVoices = ["Vani"]
    
    // Telugu
    let teluguVoices = ["Geeta"]
    
    // Thai
    let thaiVoices = ["Kanya", "Narisa"]
    
    // Turkish
    let turkishVoices = ["Cem", "Yelda"]
    
    // Ukrainian
    let ukrainianVoices = ["Lesya"]
    
    // Vietnamese
    let vietnameseVoices = ["Linh"]

    @State private var selectedVoice = "Samantha"
    
    var body: some View {
        CustomList(title: title) {
            switch title {
            case "English":
                Section("English (US)") {
                    ForEach(enUSVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (US)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (Australia)") {
                    ForEach(enAUVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (Australia)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (India)") {
                    ForEach(enINVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (India)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (Ireland)") {
                    ForEach(enIRVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (Ireland)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (Scotland, UK)") {
                    ForEach(enSUKVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (Scotland, UK)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (South Africa)") {
                    ForEach(enSAVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (South Africa)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (UK)") {
                    ForEach(enUKVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (UK)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
                
                Section("English (Novelty)") {
                    ForEach(noveltyVoices, id: \.self) { voice in
                        NavigationLink(destination: VoiceDetailView(language: "English (Novelty)", voice: voice), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                if voice == selectedVoice {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        })
                    }
                }
            case "Arabic":
                Section("Arabic (World)") {
                    ForEach(arabicVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Arabic (World)", voice: voice))
                    }
                }
            case "Bangla":
                Section("Bangla (India)") {
                    ForEach(banglaVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Bangla (India)", voice: voice))
                    }
                }
            case "Basque":
                Section("Basque (Spain)") {
                    ForEach(basqueVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Basque (Spain)", voice: voice))
                    }
                }
            case "Bhojpuri":
                Section("Bhojpuri (India)") {
                    ForEach(bhojpuriVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Bhojpuri (India)", voice: voice))
                    }
                }
            case "Bulgarian":
                Section("Bulgarian (Bulgaria)") {
                    ForEach(bulgarianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Bulgarian (Bulgaria)", voice: voice))
                    }
                }
            case "Catalan":
                Section("Catalan (Spain)") {
                    ForEach(catalanVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Catalan (Spain)", voice: voice))
                    }
                }
                
                Section("Valencian (Spain)") {
                    ForEach(valencianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Valencian (Spain)", voice: voice))
                    }
                }
            case "Chinese":
                Section("Chinese (China mainland)") {
                    ForEach(chineseMainlandVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (China mainland)", voice: voice))
                    }
                }
                
                Section("Chinese (Hong Kong)") {
                    ForEach(chineseHongKongVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (Hong Kong)", voice: voice))
                    }
                }
                
                Section("Chinese (Liaoning, China mainland)") {
                    ForEach(chineseLiaoningVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (Liaoning, China mainland)", voice: voice))
                    }
                }
                
                Section("Chinese (Shaanxi, China mainland)") {
                    ForEach(chineseShaanxiVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (Shaanxi, China mainland)", voice: voice))
                    }
                }
                
                Section("Chinese (Sichuan, China mainland)") {
                    ForEach(chineseSichuanVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (Shichuan, China mainland)", voice: voice))
                    }
                }
                
                Section("Chinese (Taiwan)") {
                    ForEach(chineseTaiwanVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Chinese (Taiwan)", voice: voice))
                    }
                }
            case "Croatian":
                Section("Croatian (Croatia)") {
                    ForEach(croatianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Croatian (Croatia)", voice: voice))
                    }
                }
            case "Czech":
                Section("Czech (Czechia)") {
                    ForEach(czechVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Czech (Czechia)", voice: voice))
                    }
                }
            case "Danish":
                Section("Danish (Denmark)") {
                    ForEach(danishVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Danish (Denmark)", voice: voice))
                    }
                }
            case "Dutch":
                Section("Dutch (Belgium)") {
                    ForEach(dutchBelgiumVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Dutch (Belgium)", voice: voice))
                    }
                }
                
                Section("Dutch (Netherlands)") {
                    ForEach(dutchNetherlands, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Dutch (Netherlands)", voice: voice))
                    }
                }
            case "Finnish":
                Section("Finnish (Finland)") {
                    ForEach(finnishVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Finnish (Finland)", voice: voice))
                    }
                }
            case "French":
                Section("French (Belgium)") {
                    ForEach(frenchBelgiumVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "French (Belgium)", voice: voice))
                    }
                }
                
                Section("French (Canada)") {
                    ForEach(frenchCanadaVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "French (Canada)", voice: voice))
                    }
                }
                
                Section("French (France)") {
                    ForEach(frenchFranceVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "French (France)", voice: voice))
                    }
                }
            case "Galician":
                Section("Galician (Spain)") {
                    ForEach(galicianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Galician (Spain)", voice: voice))
                    }
                }
            case "German":
                Section("German (Germany)") {
                    ForEach(germanVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "German (Germany)", voice: voice))
                    }
                }
            case "Greek":
                Section("Greek (Greece)") {
                    ForEach(greekVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Greek (Greece)", voice: voice))
                    }
                }
            case "Hebrew":
                Section("Hebrew (Israel)") {
                    ForEach(hebrewVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Hebrew (Israel)", voice: voice))
                    }
                }
            case "Hindi":
                Section("Hindi (India)") {
                    ForEach(hindiVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Hindi (India)", voice: voice))
                    }
                }
            case "Hungarian":
                Section("Hungarian (Hungary)") {
                    ForEach(hungarianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Hungarian (Hungary)", voice: voice))
                    }
                }
            case "Indonesian":
                Section("Indonesian (Indonesia)") {
                    ForEach(indonesianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Indonesian (Indonesia)", voice: voice))
                    }
                }
            case "Italian":
                Section("Italian (Italy)") {
                    ForEach(italianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Italian (Italy)", voice: voice))
                    }
                }
            case "Japanese":
                Section("Japanese (Japan)") {
                    ForEach(japaneseVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Japanese (Japan)", voice: voice))
                    }
                }
            case "Kannada":
                Section("Kannada (India)") {
                    ForEach(kannadaVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Kannada (India)", voice: voice))
                    }
                }
            case "Korean":
                Section("Korean (Korea)") {
                    ForEach(koreanVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Korean (Korea)", voice: voice))
                    }
                }
            case "Malay":
                Section("Malay (Malaysia)") {
                    ForEach(malayVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Malay (Malaysia)", voice: voice))
                    }
                }
            case "Marathi":
                Section("Marathi (India)") {
                    ForEach(marathiVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Marathi (India)", voice: voice))
                    }
                }
            case "Norwegian Bokmål":
                Section("Norwegian Bokmål (Norway)") {
                    ForEach(norwegianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Norwegian Bokmål (Norway)", voice: voice))
                    }
                }
            case "Persian":
                Section("Persian (Iran)") {
                    ForEach(persianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Persian (Iran)", voice: voice))
                    }
                }
            case "Polish":
                Section("Polish (Poland)") {
                    ForEach(polishVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Polish (Poland)", voice: voice))
                    }
                }
            case "Portuguese":
                Section("Portuguese (Brazil)") {
                    ForEach(portugueseBrazilVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Portuguese (Brazil)", voice: voice))
                    }
                }
                
                Section("Portuguese (Portugal)") {
                    ForEach(portuguesePortugalVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Portuguese (Portugal)", voice: voice))
                    }
                }
            case "Romanian":
                Section("Romanian (Romania)") {
                    ForEach(romanianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Romanian (Romania)", voice: voice))
                    }
                }
            case "Russian":
                Section("Russian (Russia)") {
                    ForEach(russianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Russian (Russia)", voice: voice))
                    }
                }
            case "Shanghainese":
                Section("Shanghainese (China mainland)") {
                    ForEach(shanghaineseVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Shanghainese (China mainland)", voice: voice))
                    }
                }
            case "Slovak":
                Section("Slovak (Slovakia)") {
                    ForEach(slovakVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Slovak (Slovakia)", voice: voice))
                    }
                }
            case "Slovenian":
                Section("Slovenian (Slovenia)") {
                    ForEach(slovenianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Slovenian (Slovenia)", voice: voice))
                    }
                }
            case "Spanish":
                Section("Spanish (Argentina)") {
                    ForEach(spanishArgentinaVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Spanish (Argentina)", voice: voice))
                    }
                }
                
                Section("Spanish (Chile)") {
                    ForEach(spanishChileVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Spanish (Chile)", voice: voice))
                    }
                }
                
                Section("Spanish (Colombia)") {
                    ForEach(spanishColumbiaVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Spanish (Colombia)", voice: voice))
                    }
                }
                
                Section("Spanish (Mexico)") {
                    ForEach(spanishMexicoVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Spanish (Mexico)", voice: voice))
                    }
                }
                
                Section("Spanish (Spain)") {
                    ForEach(spanishSpainVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Spanish (Spain)", voice: voice))
                    }
                }
            case "Swedish":
                Section("Swedish (Swedish)") {
                    ForEach(swedishVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Swedish (Swedish)", voice: voice))
                    }
                }
            case "Tamil":
                Section("Tamil (India)") {
                    ForEach(tamilVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Tamil (India)", voice: voice))
                    }
                }
            case "Telugu":
                Section("Telugu (India)") {
                    ForEach(teluguVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Telugu (India)", voice: voice))
                    }
                }
            case "Thai":
                Section("Thai (Thailand)") {
                    ForEach(thaiVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Thai (Thailand)", voice: voice))
                    }
                }
            case "Turkish":
                Section("Turkish (Türkiye)") {
                    ForEach(turkishVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Turkish (Türkiye)", voice: voice))
                    }
                }
            case "Ukrainian":
                Section("Ukrainian (Ukraine)") {
                    ForEach(ukrainianVoices, id: \.self) { voice in
                        NavigationLink(voice, destination: VoiceDetailView(language: "Ukrainian (Ukraine)", voice: voice))
                    }
                }
            case "Vietnamese":
                Section("Vietnamese (Vietnam)") {
                    ForEach(vietnameseVoices, id: \.self) {
                        NavigationLink($0, destination: VoiceDetailView(language: "Vietnamese (Vietnam)", voice: $0))
                    }
                }
            default:
                Text("No voices available.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        VoiceView(title: "Vietnamese")
    }
}
