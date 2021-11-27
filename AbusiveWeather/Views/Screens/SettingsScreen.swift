//
//  SettingsScreen.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import SwiftUI

struct SettingsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var selectedUnit: TemperatureUnit = .kelvin
    
    var body: some View {
        VStack {
            Picker(selection: $selectedUnit, label: Text("Select temperature unit?")) {
                ForEach(TemperatureUnit.allCases, id: \.self) {
                    Text("\($0.displayText)" as String)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
        }
        .padding()
        .navigationTitle("Settings")
        .navigationBarItems(trailing: Button("Done") {
            mode.wrappedValue.dismiss()
            
        })
        .embedInNavigationView()
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
