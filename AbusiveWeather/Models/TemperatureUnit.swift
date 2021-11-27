//
//  TemperatureUnit.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import Foundation

enum TemperatureUnit: String, CaseIterable, Identifiable {
    var id: String {
        return rawValue
    }
    
    case celsius
    case fahrenheit
    case kelvin
}

extension TemperatureUnit {
    var displayText: String {
        switch self {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            case .kelvin:
                return "Kelvin"
        }
    }
}
