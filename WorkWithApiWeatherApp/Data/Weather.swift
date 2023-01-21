//
//  Weather.swift
//  WorkWithApiWeatherApp
//
//  Created by Georgios Loulakis on 21/1/23.
//

import Foundation

struct Weather: Codable {
    var elevation: Int
    var latitude: Double
    var longitude: Double
    var timezone_abbreviation: String
    var generationtime_ms: String
    var utc_offset_seconds: Int
    
    var current_weather: CurrentWeather
}

struct CurrentWeather: Codable {
    var temperature: Double
    var time: String
    var weathercode: Int
    var winddirection: Int
    var windspeed: String
}
