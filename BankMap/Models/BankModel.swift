//
//  BankModel.swift
//  BankMap
//
//  Created by Александр Янчик on 12.01.23.
//

import Foundation
import ObjectMapper

class BankModel: Mappable {
    var id: Int = 0
    var area: String = ""
    var addressType: String = ""
    var address: String = ""
    var numHouse: String = ""
    var gpsX: String = ""
    var gpsY: String = ""
    var warkTime: String = ""
    var currency: String = ""

    required init?(map: ObjectMapper.Map) {
        mapping(map: map)
    }
    
    func mapping(map: ObjectMapper.Map) {
        id              <- map["id"]
        area            <- map["area"]
        addressType     <- map["city_type"]
        address         <- map["address"]
        numHouse        <- map["house"]
        gpsX            <- map["gps_x"]
        gpsY            <- map["gps_y"]
        warkTime        <- map["work_time"]
        currency        <- map["currency"]
    }
}


//"id": "10629",
//       "area": "Минск",
//       "city_type": "г.",
//       "city": "Минск",
//       "address_type": "пр.",
//       "address": "Независимости",
//       "house": "11 ",
//       "install_place": "Отель-1",
//       "work_time": "Круглосуточно",
//       "gps_x": "53.896667",
//       "gps_y": "27.550556",
//       "install_place_full": "",
//       "work_time_full": "ПН[1]{00:00/00:00-00:00/24:00},ВТ[1]{00:00/00:00-00:00/24:00},СР[1]{00:00/00:00-00:00/24:00},ЧТ[1]{00:00/00:00-00:00/24:00},ПТ[1]{00:00/00:00-00:00/24:00},СБ[1]{00:00/00:00-00:00/24:00},ВС[1]{00:00/00:00-00:00/24:00}",
//       "ATM_type": "Внутренний",
//       "ATM_error": "да",
//       "currency": "BYN   ",
//       "cash_in": "нет",
//       "ATM_printer": "да"
