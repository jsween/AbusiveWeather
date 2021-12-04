//
//  WeatherListScreen.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import SwiftUI

struct WeatherListScreen: View {
    @EnvironmentObject var store: Store
    @State private var activeSheet: Sheets?
    
    var body: some View {
        
        List {
            ForEach(1...20, id: \.self) { i in
                Text("\(i)")
            }
        }
        .listStyle(PlainListStyle())
        
        .sheet(item: $activeSheet, content: { (item) in
            switch item {
            case .addNewCity:
                AddCityScreen().environmentObject(store)
            case .settings:
                SettingsScreen()
            }
        })
        
        .navigationBarItems(leading: Button(action: {
            activeSheet = .settings
        }) {
            Image(systemName: "gearshape")
        }, trailing: Button(action: {
            activeSheet = .addNewCity
        }, label: {
            Image(systemName: "plus")
        }))
        .navigationTitle("Cities")
        .embedInNavigationView()
        
    }
}

struct WeatherListScreen_Previews: PreviewProvider {
    static var previews: some View {
        WeatherListScreen().environmentObject(Store())
    }
}
