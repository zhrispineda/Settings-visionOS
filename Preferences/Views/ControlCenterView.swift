//
//  ControlCenterView.swift
//  Settings-visionOS
//
//  Settings > Control Center
//

import SwiftUI

struct ControlCenterView: View {
    // Variables
    @State private var includedControls = ["Accessibility Shortcuts", "AirDrop", "Guided Access", "Hearing", "Sound Recognition", "Text Size"]
    @State private var moreControls: [String] = []
    
    var body: some View {
        CustomList(title: "Control Center") {
            Section("Included Controls") {
                ForEach($includedControls, id: \.self, editActions: .move) { $control in
                    Text(control)
                }
                .onDelete { indexSet in
                    for index in indexSet{
                        moreControls.append(includedControls[index])
                    }
                    includedControls.remove(atOffsets: indexSet)
                }
            }
            
            Section("More Controls") {
                ForEach($moreControls, id: \.self) { $control in
                    HStack(spacing: 15) {
                        Button {
                            withAnimation {
                                if let index = moreControls.firstIndex(of: control) {
                                    includedControls.append(moreControls.remove(at: index))
                                }
                            }
                        } label: {
                            ZStack {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white, .green)
                            }
                        }
                        .buttonStyle(.plain)
                        Text(control)
                    }
                }
            }
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
    }
}

#Preview {
    NavigationStack {
        ControlCenterView()
    }
}
