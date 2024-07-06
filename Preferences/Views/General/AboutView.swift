//
//  AboutView.swift
//  Settings-visionOS
//
//  Settings > General > About
//

import SwiftUI

struct AboutView: View {
    @State private var showingModelNumber = true
    @State private var serialNumber = randomSerialNumber()
    @State private var availableStorage: String = getAvailableStorage() ?? "N/A"
    @State private var totalStorage: String = getTotalStorage() ?? "N/A"
    
    var body: some View {
        CustomList(title: "About") {
            Section {
                LabeledContent("Name", value: UIDevice().name)
                ListRowNavigationLabel(title: "\(UIDevice().systemName) Version", subtitle: UIDevice().systemVersion, content: VersionView())
                LabeledContent("Model Name", value: UIDevice().name)
                LabeledContent("Model Number", value: showingModelNumber ? "A2117LL/A" : "A2117")
                    .onTapGesture {
                        showingModelNumber.toggle()
                    }
                LabeledContent("Serial Number", value: serialNumber)
            }
            
            Section {
                LabeledContent("Songs", value: "0")
                LabeledContent("Videos", value: "0")
                LabeledContent("Photos", value: "0")
                LabeledContent("Applications", value: "1")
                LabeledContent("Capacity", value: totalStorage)
                LabeledContent("Available", value: availableStorage)
            }
            
            Section {
                NavigationLink("Certificate Trust Settings", destination: CertificateTrustSettingsView())
            }
        }
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

func randomSerialNumber() -> String {
   let letters = "BCDFGHJKLMNPQRTVWXYZ0123456789"
   var random = SystemRandomNumberGenerator()
   var randomString = ""
   for _ in 0..<10 {
      let randomIndex = Int(random.next(upperBound: UInt32(letters.count)))
      let randomCharacter = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
      randomString.append(randomCharacter)
   }
   return randomString
}

#Preview {
    NavigationStack {
        AboutView()
    }
}
