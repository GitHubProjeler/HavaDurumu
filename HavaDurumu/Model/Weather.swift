//
//  Weather.swift
//  HavaDurumu
//
//  Created by fatih acar on 29.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import Foundation

struct WeathearData:Codable {
    var currently : Currently //Şunaki bilgilere erişiliyor
    var hourly:Hourly // Saatlik olan bilgilere erişiliyor
    
    //Şuanki bilgiler
    struct Currently:Codable {
        var summary:String
        var time:Int
        var apparentTemperature:Double
    }
    
    //Saatlik bilgiler
    struct Hourly:Codable {
        var summary:String
    }
}
