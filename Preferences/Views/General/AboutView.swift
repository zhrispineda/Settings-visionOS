//
//  AboutView.swift
//  Settings-visionOS
//
//  Settings > General > About
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
                    ListRowNavigationLabel(title: "\(UIDevice().systemName) Version", subtitle: UIDevice().systemVersion, content: VersionView())
                    ListRowLabel(title: "Model Name", subtitle: UIDevice().name)
                    ListRowLabel(title: "Model Number", subtitle: (showingModelNumber ? "A2117LL/A" : "A2117"))
                        .onTapGesture {
                            showingModelNumber.toggle()
                        }
                    ListRowLabel(title: "Serial Number", subtitle: "XXXXX00XXX")
                }
                
                Section {
                    ListRowLabel(title: "Songs", subtitle: "0")
                    ListRowLabel(title: "Videos", subtitle: "0")
                    ListRowLabel(title: "Photos", subtitle: "0")
                    ListRowLabel(title: "Capacity", subtitle: totalStorage)
                    ListRowLabel(title: "Available", subtitle: availableStorage)
                }
                
                Section {
                    NavigationLink("Certificate Trust Settings", destination: CertificateTrustSettingsView())
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
        .padding([.leading, .trailing], 45)
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
