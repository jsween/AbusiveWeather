//
//  Sys.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 12/3/21.
//

import Foundation

struct Sys: Decodable {
    let sunrise: Date
    let sunset: Date
    
    private enum CodingKeys: String, CodingKey {
        case sunrise = "sunrise"
        case sunset = "sunset"
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let sunriseTimeInterval = try container.decode(Int.self, forKey: .sunrise)
        let sunsetTimeInterval = try container.decode(Int.self, forKey: .sunset)
        sunrise = Date(timeIntervalSince1970: TimeInterval(sunriseTimeInterval))
        sunset = Date(timeIntervalSince1970: TimeInterval(sunsetTimeInterval))
    }
}
