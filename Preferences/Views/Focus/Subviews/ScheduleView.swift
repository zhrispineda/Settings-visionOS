//
//  ScheduleView.swift
//  Preferences
//
//  Settings > Focus > [Focus] > [Schedule Time]
//

import SwiftUI

struct ScheduleView: View {
    // Variables
    @State private var scheduleEnabled = false
    @State private var showingDeleteAlert = false
    @State private var fromTime = Calendar.current.startOfDay(for: Date())
    @State private var toTime = Calendar.current.startOfDay(for: Date())
    
    let days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    @State private var selectedDays = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    
    var body: some View {
        List {
            Section {
                Toggle("Schedule", isOn: $scheduleEnabled)
            }
            
            Section {
                DatePicker("From", selection: $fromTime, displayedComponents: .hourAndMinute)
                DatePicker("To", selection: $toTime, displayedComponents: .hourAndMinute)
                HStack {
                    Text("Repeat")
                    Spacer()
                    ForEach(days, id: \.self) { option in
                        Button {
                            if let index = selectedDays.firstIndex(of: option) {
                                selectedDays.remove(at: index)
                            } else {
                                selectedDays.append(option)
                                selectedDays.sort { (day1, day2) in
                                    guard let index1 = days.firstIndex(of: day1),
                                          let index2 = days.firstIndex(of: day2) else {
                                        return false
                                    }
                                    return index1 < index2
                                }
                            }
                        } label: {
                            ZStack {
                                if selectedDays.contains(option) {
                                    Image(systemName: "circle.fill")
                                        .foregroundStyle(.indigo)
                                        .font(.extraLargeTitle)
                                } else {
                                    Image(systemName: "circle.fill")
                                        .foregroundStyle(Color.white)
                                        .opacity(0.2)
                                        .font(.extraLargeTitle)
                                }
                                Text(option.prefix(1))
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
            } header: {
                Text("Time")
            } footer: {
                switch selectedDays {
                case ["Sun", "Sat"]:
                    Text("Weekends")
                case ["Mon", "Tue", "Wed", "Thu", "Fri"]:
                    Text("Weekdays")
                case let days where days.count == 1:
                    Text("Every \(days[0])")
                case let days where days.count == 2:
                    Text("Every \(days[0]) and \(days[1])")
                case let days where days.count >= 3 && days.count <= 6:
                    let daysFooter = "Every " + days.dropLast().joined(separator: ", ") + ", and \(days.last!)"
                    Text(daysFooter)
                case _ where selectedDays.isEmpty:
                    Text("Never repeats")
                default:
                    Text("Every day")
                }
            }
            
            Section {
                Button("Delete Schedule", action: {
                    showingDeleteAlert.toggle()
                })
                .foregroundStyle(.red)
                .alert("Do you want to delete this schedule?", isPresented:$showingDeleteAlert) {
                    Button("Delete Schedule", role: .destructive) {}
                    Button("Cancel", role: .cancel) {}
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("12:00 AM")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ScheduleView()
    }
}
