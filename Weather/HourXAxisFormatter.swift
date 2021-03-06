//
//  HourXAxisFormatter.swift
//  Weather
//
//  Created by Serhii Onopriienko on 8/20/17.
//  Copyright © 2017 Serhii Onopriienko. All rights reserved.
//

import Foundation
import Charts

class HourXAxisFormatter: NSObject, IAxisValueFormatter {
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let date = Date(timeIntervalSince1970: value)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "h a E"
        formatter.locale = Locale.current
        
        return formatter.string(from: date)
    }
}
