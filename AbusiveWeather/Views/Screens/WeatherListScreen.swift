//
//  WeatherListScreen.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import SwiftUI

struct WeatherListScreen: View {
    var body: some View {
        
        List {
            ForEach(1...20, id: \.self) { i in
                Text("\(i)")
            }
        }
        .listStyle(PlainListStyle())
        
        .navigationBarItems(leading: Button(action: {
            
        }) {
            Image(systemName: "gearshape")
        }, trailing: Button(action: {
            
        }, label: {
            Image(systemName: "plus")
        }))
        .navigationTitle("Cities")
        .embedInNavigationView()
        
    }
}

struct WeatherListScreen_Previews: PreviewProvider {
    static var previews: some View {
        WeatherListScreen()
    }
}
