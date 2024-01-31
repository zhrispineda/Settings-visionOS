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
        CustomList(title: "About") {
            Section {
                ListRowLabel(title: "Name", subtitle: UIDevice().name)
                ListRowNavigationLabel(title: "\(UIDevice().systemName) Version", subtitle: UIDevice().systemVersion, content: VersionView())
                ListRowLabel(title: "Model Name", subtitle: UIDevice().name)
                ListRowLabel(title: "Model Number", subtitle: (showingModelNumber ? "A2117LL/A" : "A2117"))
                    .onTapGesture {
                        showingModelNumber.toggle()
                    }
                ListRowLabel(title: "Test", subtitle: randomSerialNumber(10))
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

func randomSerialNumber(_ length: Int) -> String {
   let letters = "BCDFGHJKLMNPQRTVWXYZ0123456789"
   var random = SystemRandomNumberGenerator()
   var randomString = ""
   for _ in 0..<length {
      let randomIndex = Int(random.next(upperBound: UInt32(letters.count)))
      let randomCharacter = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
      randomString.append(randomCharacter)
   }
   return randomString
}

#Preview {
    AboutView()
}
