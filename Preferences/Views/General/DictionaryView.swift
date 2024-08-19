//
//  DictionaryView.swift
//  Settings-visionOS
//
//  Settings > General > Dictionary
//

import SwiftUI

struct DictionaryView: View {
    // Variables
    struct Dictionary: Identifiable {
        let id = UUID()
        var language = String()
        var dictionary = String()
    }
    
    let dictionaries: [Dictionary] = [
        Dictionary(language: "English (US)", dictionary: "New Oxford American Dictionary"),
        Dictionary(language: "English (US)", dictionary: "Oxford American Writer‘s Thesaurus"),
        Dictionary(language: "Apple Dictionary")
    ]
    
    @State private var selected: [String] = []
    
    var body: some View {
        CustomList(title: "Dictionary") {
            ForEach(dictionaries) { dict in
                Button {
                    if let index = selected.firstIndex(of: dict.dictionary) {
                        selected.remove(at: index)
                    } else {
                        selected.append(dict.dictionary)
                    }
                } label: {
                    Label {
                        VStack(alignment: .leading) {
                            Text(dict.language)
                            if !dict.dictionary.isEmpty {
                                Text(dict.dictionary)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    } icon: {
                        Image(systemName: "checkmark")
                            .opacity(selected.contains(dict.dictionary) ? 1 : 0)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DictionaryView()
    }
}
