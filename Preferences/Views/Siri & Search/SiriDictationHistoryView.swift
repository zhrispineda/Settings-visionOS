//
//  SiriDictationHistoryView.swift
//  Preferences
//
//  Settings > Siri & Search > Siri & Dictation History
//

import SwiftUI

struct SiriDictationHistoryView: View {
    // Variables
    @State private var showingDeleteHistoryAlert = false
    @State private var showingProcessRequestAlert = false
    
    var body: some View {
        CustomList(title: "Siri & Dictation History") {
            Section {
                Button("Delete Siri & Dictation History") { showingDeleteHistoryAlert.toggle() }
                    .foregroundStyle(.red)
                    .alert("Delete Siri &\nDictation History", isPresented: $showingDeleteHistoryAlert) {
                        Button("Delete Siri &\nDictation History", role: .destructive) { showingProcessRequestAlert.toggle() }
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Siri & Dictation interactions currently associated with this \(UIDevice().name)\nwill be deleted from Apple servers.")
                    }
                    .alert("Your Process Is\nBeing Requested", isPresented: $showingProcessRequestAlert) {
                        Button("OK") {}
                    } message: {
                        Text("Your Siri and Dictation history will be deleted.")
                    }
            } footer: {
                Text("Delete Siri & Dictation interactions currently associated with this \(UIDevice().name) from Apple servers. [About Improve Siri & Dictation](#)")
            }
        }
    }
}

#Preview {
    SiriDictationHistoryView()
}
