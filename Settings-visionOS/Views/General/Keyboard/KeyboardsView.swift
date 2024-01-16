//
//  KeyboardsView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/16/24.
//

import SwiftUI

struct KeyboardsView: View {
    // Variables
    @State private var keyboards = ["English", "Emoji"]
    
    var body: some View {
        List {
            ForEach(keyboards, id: \.self) { item in
                Text(item)
            }
            .onMove { prev, new in
                keyboards.move(fromOffsets: prev, toOffset: new)
            }
        }
        .padding([.leading, .trailing], 25)
        .navigationTitle("Keyboards")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Keyboards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
            })
        }
    }
}

//#Preview {
//    KeyboardsView()
//}
