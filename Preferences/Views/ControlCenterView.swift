//
//  ControlCenterView.swift
//  Settings-visionOS
//
//  Settings > Control Center
//

import SwiftUI

struct ControlCenterView: View {
    // Variables
    @State private var includedControls: [String] = ["Accessibility Shortcuts", "AirDrop", "Guided Access", "Hearing", "Sound Recognition", "Text Size"]
    @State private var moreControls: [String] = []
    
    var body: some View {
        CustomList(title: "Control Center") {
            Section(content: {
                ForEach($includedControls, id: \.self, editActions: .move) { $control in
                    Text(control)
                    // TODO: Fix missing controls when appending to includedControls
                }
                .onDelete { indexSet in
                    for index in indexSet{
                        moreControls.append(includedControls[index])
                    }
                    includedControls.remove(atOffsets: indexSet)
                }
            }, header: {
                Text("Included Controls")
            })
            
            Section(content: {
                ForEach($moreControls, id: \.self) { $control in
                    HStack(spacing: 15) {
                        Button(action: {
                            withAnimation {
                                if let index = moreControls.firstIndex(of: control) {
                                    includedControls.append(moreControls.remove(at: index))
                                }
                            }
                        }, label: {
                            ZStack {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white, .green)
                            }
                        })
                        .buttonStyle(.plain)
                        Text(control)
                    }
                }
            }, header: {
                Text("More Controls")
            })
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
    }
}

#Preview {
    ControlCenterView()
}
