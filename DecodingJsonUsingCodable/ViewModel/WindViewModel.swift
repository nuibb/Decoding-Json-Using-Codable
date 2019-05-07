//
//  WindViewModel.swift
//  DecodingJsonUsingCodable
//
//  Created by Steve JobsOne on 5/2/19.
//  Copyright © 2019 MobioApp Limited. All rights reserved.
//

import Foundation

struct WindViewModel {
    let currentWeather: CurrentWeather
    private(set) var coordString = ""
    private(set) var windSpeedString = ""
    private(set) var windDegString = ""
    private(set) var locationString = ""
    
    init(currentWeather: CurrentWeather) {
        self.currentWeather = currentWeather
        updateProperties()
    }
    
    //Creating a mutating function allows us to change the properties of the struct.
    private mutating func updateProperties() {
        coordString = setCoordString(currentWeather: currentWeather)
        windSpeedString = setWindSpeedString(currentWeather: currentWeather)
        windDegString = setWindDirectionString(currentWeather: currentWeather)
        locationString = setLocationString(currentWeather: currentWeather)
    }
}

extension WindViewModel {
    // Create separate functions for each property.
    private func setCoordString(currentWeather: CurrentWeather) -> String {
        guard let latitude = currentWeather.coord.lat else {
            return "Latitude not available"
        }
        guard let longitude = currentWeather.coord.lon else {
            return "Longitude not available"
        }
        return "Latitude: \(latitude) and Longitude: \(longitude)"
    }
    
    private func setWindSpeedString(currentWeather: CurrentWeather) -> String {
        guard let windSpeed = currentWeather.wind.speed else {
            return "Wind speed not available"
        }
        return "Wind Speed: \(windSpeed)"
    }
    
    private func setWindDirectionString(currentWeather: CurrentWeather) -> String {
        guard let windDegree = currentWeather.wind.deg else {
            return "Wind degree not available"
        }
        return "Wind Degree: \(windDegree)"
    }
    
    private func setLocationString(currentWeather: CurrentWeather) -> String {
        return "Location: \(currentWeather.name)"
    }
} 
