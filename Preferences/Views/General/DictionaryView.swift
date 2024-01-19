//
//  DictionaryView.swift
//  Settings-visionOS
//
//  Settings > General > Dictionary
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
        List {
            // TODO: Create list of dictionaries and support selection.
            Label(
                title: {
                    VStack(alignment: .leading) {
                        Text("English (US)")
                        Text("New Oxford American Dictionary").foregroundStyle(.secondary)
                    }
                },
                icon: {
                    Image(systemName: "checkmark")
                        .foregroundStyle(.white)
                        .offset(y: 10)
                }
            )
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Dictionary")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    DictionaryView()
}
