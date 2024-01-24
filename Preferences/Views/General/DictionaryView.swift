//
//  DictionaryView.swift
//  Settings-visionOS
//
//  Settings > General > Dictionary
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
        CustomList(title: "Dictionary") {
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
    }
}

#Preview {
    DictionaryView()
}
