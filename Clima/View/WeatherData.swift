//
//  WeatherData.swift
//  Clima
//
//  Created by Atticus Beard on 1/12/26.
//  Copyright © 2026 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
}
