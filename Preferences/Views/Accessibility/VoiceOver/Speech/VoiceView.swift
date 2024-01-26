//
//  VoiceView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech > Voice
//

import SwiftUI

struct VoiceView: View {
    // Variables
    let enUSVoices = ["Agnes", "Alex", "Allison", "Ava", "Bruce", "Evan", "Fred", "Joelle", "Junior", "Kathy", "Nathan", "Nicky", "Noelle", "Ralph", "Samantha", "Siri", "Susan", "Tom", "Vicki", "Victoria", "Zoe"]
    let enAUVoices = ["Karen", "Lee", "Matilda", "Siri"]
    let enINVoices = ["Isha", "Rishi", "Sangeeta", "Siri", "Veena"]
    let enIRVoices = ["Moira", "Siri"]
    let enSUKVoices = ["Fiona"]
    let enSAVoices = ["Siri", "Tessa"]
    let enUKVoices = ["Daniel", "Jamie", "Kate", "Oliver", "Serena", "Siri", "Stephanie"]
    let noveltyVoices = ["Albert", "Bad News", "Bahh", "Bells", "Boing", "Bubbles", "Cellos", "Good News", "Jupiter", "Jester", "Organ", "Superstar", "Trinoids", "Whisper", "Wobble", "Zarvox"]
    @State private var selectedVoice = "Samantha"
    
    var body: some View {
        CustomList(title: "English") {
            Section(content: {
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
            }, header: {
                Text("English (US)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (Australia)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (India)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (Ireland)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (Scotland, UK)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (South Africa)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (UK)")
            })
            
            Section(content: {
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
            }, header: {
                Text("English (Novelty)")
            })
        }
    }
}

#Preview {
    VoiceView()
}
