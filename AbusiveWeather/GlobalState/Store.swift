//
//  Store.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 12/4/21.
//

import Foundation

class Store: ObservableObject {
    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()
    
    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
