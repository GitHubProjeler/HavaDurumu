//
//  Weather.swift
//  HavaDurumu
//
//  Created by fatih acar on 29.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import Foundation

struct WeathearData:Codable {
    var currently : Currently
    var hourly:Hourly
    
    struct Currently:Codable {
        var summary:String
        var apparentTemperature:Double
    }
    
    struct Hourly:Codable {
        var summary:String
        
    }
}
