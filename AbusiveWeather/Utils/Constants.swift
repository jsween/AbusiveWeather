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
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=945dd898f76f99e17e0b49c5279215d4")
        }
        
        static func weatherUrlAsStringByIcon(icon: String) -> String {
            return "https://openweathermap.org/img/w/\(icon).png"
        }
    }
}
