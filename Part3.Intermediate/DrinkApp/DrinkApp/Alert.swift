//
//  Alert.swift
//  DrinkApp
//
//  Created by 최주원 on 2023/02/06.
//

import Foundation

struct Alert: Codable{
    var id: String = UUID().uuidString
    let date: Date
    var isOn: Bool
    
    var time: String{
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.string(from: date)
    }
    
    var merdiem: String{
        let merdiemFormatter = DateFormatter()
        merdiemFormatter.dateFormat = "a"
        merdiemFormatter.locale = Locale(identifier: "ko")
        return merdiemFormatter.string(from: date)
    }
}
