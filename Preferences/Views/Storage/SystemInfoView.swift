//
//  SystemInfoView.swift
//  Preferences
//
//  Settings > Storage > visionOS (2.0)
//  Settings > Storage > System Data
//

import SwiftUI

struct SystemInfoView: View {
    var title: String = "System Data"
    
    var body: some View {
        CustomList(title: title) {
            Section {
                HStack(alignment: (title == "System Data" ? .center : .top), spacing: 15) {
                    Image("applesettings")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        if title == "\(UIDevice().systemName) (\(UIDevice().systemVersion)" {
                            Text(title)
                            Text("Apple Inc.")
                                .font(.callout)
                            Text("Version: 2.0")
                                .font(.callout)
                        } else {
                            Text(title)
                            Text("Apple Inc.")
                                .font(.callout)
                        }
                    }
                }
                LabeledContent("Documents & Data", value: title == "System Data" ? "3.3 GB" : "10.13 GB")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SystemInfoView()
    }
}
