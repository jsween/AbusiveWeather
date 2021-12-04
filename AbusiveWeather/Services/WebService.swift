//
//  WebService.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 12/4/21.
//

import Foundation

class WebService {
    
    func getWeatherByCity(city: String, completion: @escaping ((Result<Weather, NetworkError>) -> Void)) {
        
        guard let weatherURL = K.Urls.weatherByCity(city: city) else {
            return completion(.failure(.badUrl))
        }
        
        URLSession.shared.dataTask(with: weatherURL) { (data, _, error) in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                
            }
            
        }.resume()
    }
    
}
