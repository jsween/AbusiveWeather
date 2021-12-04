//
//  AddWeatherViewModel.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 12/4/21.
//

import Foundation

class AddWeatherViewModel: ObservableObject {
    var city: String = ""
    
    func save(completion: @escaping (WeatherViewModel) -> Void) {
        WebService().getWeatherByCity(city: city) { (result) in
            switch result {
            case .success(let weather):
                DispatchQueue.main.async {
                    completion(WeatherViewModel(weather: weather))
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
