//
//  StorageView.swift
//  Settings-visionOS
//
//  Settings > Storage
//

import SwiftUI
import Charts

struct StorageView: View {
    // Variables
    @State private var searchText = String()
    
    // Data
    struct StorageData {
        struct Storage: Identifiable {
            let type: String
            let usage: Double
            var id: String { type }
        }
        
        static let currentStorage: [Storage] = [
            .init(type: "visionOS", usage: 9.97),
            .init(type: "System Data", usage: 22.33)
            //.init(type: "Free", usage: 223.70)
        ]
    }
    
    var body: some View {
        CustomList(title: "Apple Vision Pro Storage") {
            // Graph Section
            Section {
                VStack {
                    HStack {
                        Text("\(UIDevice().name)")
                        Spacer()
                        Text("32.30 GB of 256 GB used")
                            .foregroundStyle(.secondary)
                    }
                    Chart(StorageData.currentStorage, id: \.type) { data in
                        Plot {
                            BarMark(x: .value("Storage Size", data.usage))
                        }
                        .foregroundStyle(by: .value("Data Type", data.type))
                    }
                    .chartPlotStyle { plotArea in
                        ZStack {
                            Color.black
                            Text("223.70 GB")
                                .foregroundColor(.white)
                                .padding(.leading, 50)
                            plotArea
                        }
                        .cornerRadius(5.0)
                    }
                    .chartForegroundStyleScale([
                        "visionOS" : Color(UIColor.systemGray2),
                        "System Data": Color(UIColor.systemGray5)])
                    .chartXAxis(.hidden)
                    .chartXScale(domain: 0...256)
                    .frame(height: 75)
                }
            }
            
            // Applications Section
            Section(content: {
                NavigationLink(destination: AppStorageInfoView(appName: "Calendar"), label: {
                    HStack(spacing: 15) {
                        Image("applecalendar")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        VStack(alignment: .leading) {
                            Text("Calendar")
                            Text("4.6 MB")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                })
                NavigationLink(destination: AppStorageInfoView(appName: "Safari"), label: {
                    HStack(spacing: 15) {
                        Image("applesafari")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        VStack(alignment: .leading) {
                            Text("Safari")
                            Text("308 KB")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                })
            }, header: {
                Text("Applications")
            })
            
            // System Section
            Section {
                NavigationLink(destination: SystemInfoView(title: "visionOS (1.0)"), label: {
                    HStack(spacing: 15) {
                        Image("applesettings")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("\(UIDevice().systemName) (\(UIDevice().systemVersion))")
                            Text("9.97 GB")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                })
                NavigationLink(destination: SystemInfoView(title: "System Data"), label: {
                    HStack(spacing: 15) {
                        Image("applesettings")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("System Data")
                            Text("22.33 GB")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                })
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer)
    }
}

#Preview {
    StorageView()
}
