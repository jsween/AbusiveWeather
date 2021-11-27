//
//  WeatherCellRow.swift
//  AbusiveWeather
//
//  Created by Jonathan Sweeney on 11/26/21.
//

import SwiftUI

struct WeatherCellRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text("Houston")
                    .fontWeight(.bold)
                HStack {
                    Image(systemName: "sunrise")
                    Text("\(Date().formatAsString())")
                }
                HStack {
                    Image(systemName: "sunset")
                    Text("\(Date().formatAsString())")
                }
            }
            Spacer()
            
            
            Text("72 F")
        }
        .padding()
            .background(Color(#colorLiteral(red: 0.9133135676, green: 0.9335765243, blue: 0.98070997, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        
    }
}

struct WeatherCellRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCellRow()
    }
}
