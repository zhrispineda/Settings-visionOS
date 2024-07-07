//
//  BrailleView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille
//

import SwiftUI

struct BrailleView: View {
    // Variables
    @State private var matchInputOutputTables = false
    @State private var automaticTranslation = false
    @State private var equationsUseNemethCodeEnabled = true
    @State private var showOnscreenKeyboardEnabled = false
    @State private var turnPagesPanningEnabled = true
    @State private var wordWrapEnabled = true
    @State private var textFormattingEnabled = false
    @State private var soundCurtainEnabled = false
    @State private var showingSoundCurtainAlert = false
    @State private var enableBluetoothStart = false
    
    var body: some View {
        CustomList(title: "Braille") {
            Section {
                Toggle("Match Input and Output Tables", isOn: $matchInputOutputTables)
                if matchInputOutputTables {
                    ListRowNavigationLabel(title: "Input and Output", subtitle: "English (Unified, Uncontracted)", content: OutputView())
                } else {
                    ListRowNavigationLabel(title: "Output", subtitle: "English (Unified, Uncontracted)", content: OutputView())
                    ListRowNavigationLabel(title: "Input", subtitle: "English (Unified, Uncontracted)", content: InputView())
                }
            }
            
            Section {
                ListRowNavigationLabel(title: "Braille Tables", subtitle: "3", content: BrailleTablesView())
            }
            
            Section {
                Toggle("Automatic Translation", isOn: $automaticTranslation)
                NavigationLink("Status Cell", destination: StatusCellsView())
                Toggle("Equations use Nemeth Code", isOn: $equationsUseNemethCodeEnabled)
                Toggle("Show Onscreen Keyboard", isOn: $showOnscreenKeyboardEnabled)
                Toggle("Turn Pages when Panning", isOn: $turnPagesPanningEnabled)
                Toggle("Word Wrap", isOn: $wordWrapEnabled)
                Toggle("Text Formatting", isOn: $textFormattingEnabled)
                ListRowNavigationLabel(title: "Braille Alert Messages", subtitle: "3s", content: BrailleAlertMessagesView())
                ListRowNavigationLabel(title: "Ignore Chord Duration", subtitle: "0.3s", content: IgnoreChordDurationView())
                ListRowNavigationLabel(title: "Auto Advance Duration", subtitle: "5s", content: AutoAdvanceDurationView())
            }
            
            Section {
                Toggle("Sound Curtain", isOn: $soundCurtainEnabled)
                    .alert("Sound Curtain", isPresented: $showingSoundCurtainAlert) {
                        Button("OK") {}
                        Button("Cancel", role: .cancel) { soundCurtainEnabled = false }
                    } message: {
                        Text("Sound Curtain will disable all audio including VoiceOver when a Braille display is connected. Are you sure you want to continue?")
                    }
                    .onChange(of: soundCurtainEnabled) {
                        showingSoundCurtainAlert = soundCurtainEnabled
                    }
            } footer: {
                Text("Sound Curtain ensures that your \(UIDevice().name) does not play sound from music or sound effects when a Braille display is connected. Emergency alerts will still play sounds.")
            }
            
            Section {
                Toggle("Enabled Bluetooth on Start", isOn: $enableBluetoothStart)
            } footer: {
                Text("Enable Bluetooth when VoiceOver starts so that Braille displays can connect.")
            }
            
            Section {
                HStack {
                    Text("Searching...")
                    Spacer()
                    ProgressView()
                }
            } header: {
                Text("CHOOSE A BRAILLE DISPLAY")
                    .font(.subheadline)
            }
            .foregroundStyle(.tertiary)
        }
    }
}

#Preview {
    NavigationStack {
        BrailleView()
    }
}
