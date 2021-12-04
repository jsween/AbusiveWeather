//
//  Weather.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import Foundation

struct Weather: Decodable {
    let city: String
    let temperature: Double
    let icon: String
    let sunrise: Date
    let sunset: Date
}
