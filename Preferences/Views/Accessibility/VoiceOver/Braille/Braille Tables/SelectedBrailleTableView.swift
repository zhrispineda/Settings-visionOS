//
//  SelectedBrailleTableView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Braille Tables
//

import SwiftUI

struct SelectedBrailleTableView: View {
    // Variables
    let systemOptions = ["English (UK)", "English (US)", "English (Unified)"]
    let liblouisOptions = ["English (Canada)", "English (North America Braille Computer Code)", "English (UK)", "English (US)", "English (Unified)"]
    @State private var selected = "English (Unified)"
    @State private var currentArray = "systemOptions"
    
    var body: some View {
        CustomList(title: "English (Unified) – System") {
            Section("System") {
                ForEach(systemOptions, id: \.self) { option in
                    Button {
                        selected = option
                        currentArray = "systemOptions"
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if option == selected && currentArray == "systemOptions" {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
            
            Section("Liblouis") {
                ForEach(liblouisOptions, id: \.self) { option in
                    Button {
                        selected = option
                        currentArray = "liblouisOptions"
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if option == selected && currentArray == "liblouisOptions" {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SelectedBrailleTableView()
    }
}
