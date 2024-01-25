//
//  SystemInfoView.swift
//  Preferences
//
//  Settings > Storage > visionOS (1.0)
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
                        if title == "visionOS (1.0)" {
                            Text(title)
                            Text("Apple Inc.")
                                .font(.callout)
                            Text("Version: 1.0")
                                .font(.callout)
                        } else {
                            Text(title)
                            Text("Apple Inc.")
                                .font(.callout)
                        }
                    }
                }
                ListRowLabel(title: "Documents & Data", subtitle: "\(title == "System Data" ? "3.3 GB" : "10.13 GB")")
            }
        }
    }
}

#Preview {
    SystemInfoView()
}
