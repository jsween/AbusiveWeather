//
//  WeatherIcon.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import Foundation

struct WeatherIcon: Decodable {
    let main: String
    let description: String
    let icon: String
}
