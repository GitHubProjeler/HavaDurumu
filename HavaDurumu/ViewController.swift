//
//  ViewController.swift
//  HavaDurumu
//
//  Created by fatih acar on 29.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import UIKit

let myStringUrl = "https://api.darksky.net/forecast/4d035b02bbbeb3caf0bf45984c7da94f/41.0082,28.9784?lang=tr"
let url = URL (string:myStringUrl)!
let myData = try! Data(contentsOf:url)
let jsonDecoder = JSONDecoder()


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    let result = try? jsonDecoder.decode(WeathearData.self, from: myData)
        if let havaDurumu = result?.currently{
            let derece = ((havaDurumu.apparentTemperature) - 32 ) / 1.8
            print("Derece : " + String(derece))
        }
        if let hd = result?.hourly{
            print(hd.summary)
        }
    }

   

}

