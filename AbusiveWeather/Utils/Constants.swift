//
//  Constants.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import Foundation

struct K {
    struct Urls {
        static func weatherByCity(city: String) -> URL? {
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=\(ApiKeys.openWeather)")
        }
        
        static func weatherUrlAsStringByIcon(icon: String) -> String {
            return "https://openweathermap.org/img/w/\(icon).png"
        }
    }
}
