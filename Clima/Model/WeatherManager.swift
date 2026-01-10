//
//  WeatherController.swift
//  Clima
//
//  Created by Atticus Beard on 1/9/26.
//  Copyright © 2026 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=5814ba91bf0d304d21a621c2c427a9c8&units=imperial"
    
    func fetchWeather(cityName: String) {
        let requestURL = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: requestURL)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            task.resume()
            
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
        }
    }
}
