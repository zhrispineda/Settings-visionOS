//
//  AboutView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/5/24.
//

import SwiftUI

struct AboutView: View {
    @State private var showingModelNumber = true
    @State private var availableStorage: String = getAvailableStorage() ?? "N/A"
    @State private var totalStorage: String = getTotalStorage() ?? "N/A"
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ListRowLabel(title: "Name", subtitle: UIDevice().name)
                    ListRowNavigationLabel(title: "\(UIDevice().systemName) Version", subtitle: UIDevice().systemVersion)
                    ListRowLabel(title: "Model Name", subtitle: UIDevice().name)
                    ListRowLabel(title: "Model Number", subtitle: (showingModelNumber ? "A2117LL/A" : "A2117"))
                        .onTapGesture {
                            showingModelNumber.toggle()
                        }
                    ListRowLabel(title: "Serial Number", subtitle: "OQPWJ00ABC")
                }
                
                Section {
                    ListRowLabel(title: "Songs", subtitle: "0")
                    ListRowLabel(title: "Videos", subtitle: "0")
                    ListRowLabel(title: "Photos", subtitle: "0")
                    ListRowLabel(title: "Capacity", subtitle: totalStorage)
                    ListRowLabel(title: "Available", subtitle: availableStorage)
                }
                
                Section {
                    NavigationLink("Certificate Trust Settings", destination: {})
                }
            }
            .navigationTitle("About")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("About")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
                })
            }
        }
        .padding([.leading, .trailing], 25)
    }
}

struct ListRowLabel: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(subtitle)
                .foregroundStyle(.secondary)
        }
    }
}

struct ListRowNavigationLabel: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    
    var body: some View {
        NavigationLink(destination: {}, label: {
            HStack {
                Text(title)
                Spacer()
                Text(subtitle)
                    .foregroundStyle(.secondary)
            }
        })
    }
}

func getAvailableStorage() -> String? {
    let fileManager = FileManager.default
    do {
        let systemAttributes = try fileManager.attributesOfFileSystem(forPath: NSHomeDirectory() as String)
        
        if let freeSize = systemAttributes[.systemFreeSize] as? NSNumber {
            let bytes = freeSize.int64Value
            let formatter = ByteCountFormatter()
            formatter.allowedUnits = [.useGB]
            formatter.countStyle = .file
            return formatter.string(fromByteCount: bytes)
        }
    } catch {
        print("Error: \(error.localizedDescription)")
    }
    return nil
}

func getTotalStorage() -> String? {
    let fileManager = FileManager.default
    do {
        let systemAttributes = try fileManager.attributesOfFileSystem(forPath: NSHomeDirectory() as String)
        
        if let totalSize = systemAttributes[.systemSize] as? NSNumber {
            let bytes = totalSize.int64Value
            let formatter = ByteCountFormatter()
            formatter.allowedUnits = [.useGB]
            formatter.countStyle = .file
            return formatter.string(fromByteCount: bytes)
        }
    } catch {
        print("Error: \(error.localizedDescription)")
    }
    return nil
}

#Preview {
    AboutView()
}
