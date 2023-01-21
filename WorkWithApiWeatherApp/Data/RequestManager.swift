//
//  RequestManager.swift
//  WorkWithApiWeatherApp
//
//  Created by Georgios Loulakis on 21/1/23.
//

import Foundation

class RequestManager {
    static var temperature: Double = 0.0
    
    static let url = URL(string: "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true")
    
    class func fetchData(){
        var request = URLRequest(url:url!)
        request.httpMethod = "GET"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request, completionHandler:{ (data, response, error) in
            guard let data = data, let result = try? JSONDecoder().decode(Weather.self, from: data) else {
                print ("Cant fetch data")
                return
            }
            print (result)
            RequestManager.temperature = result.current_weather.temperature
        })
        task.resume()
    }}
