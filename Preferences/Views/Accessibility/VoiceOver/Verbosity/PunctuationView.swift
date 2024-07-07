//
//  PunctuationView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Punctuation
//

import SwiftUI

struct PunctuationView: View {
    // Variables
    @State private var showingInitialPunctuationGroupPrompt = false
    
    var body: some View {
        CustomList(title: "Punctuation") {
            Section {
                ListRowNavigationLabel(title: "Active Punctuation Group", subtitle: "Some", content: ActivePunctuationGroupView())
            }
            
            Section("System Groups") {
                NavigationLink("All", destination: PunctuationAllView())
                NavigationLink("Some", destination: PunctuationSomeView())
                NavigationLink("None", destination: PunctuationNoneView())
            }
            
            Section {
                Button("Add Punctuation Group") { showingInitialPunctuationGroupPrompt.toggle() }
                    .alert("Initial Punctuation Group", isPresented: $showingInitialPunctuationGroupPrompt) {
                        Button("All") {}
                        Button("Some") {}
                        Button("None") {}
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Choose a punctuation group to base your new group on.")
                    }
            }
            
            Section {
                Button("Import") {}
            }
        }
    }
}

#Preview {
    PunctuationView()
}
