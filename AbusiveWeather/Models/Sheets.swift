//
//  Sheets.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 12/4/21.
//

import Foundation

enum Sheets: Identifiable {
    var id: UUID {
        return UUID()
    }
    
    case addNewCity
    case settings
}
