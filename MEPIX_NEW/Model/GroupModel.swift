//
//  GroupModel.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 12.04.2022.
//

import Foundation


struct Group: Codable{
    var name: String?
    var id: String?
    var groupId: String?
    var weeks: [Weeks]?
    var groupNumber: String?
    var type: String?
}

struct Weeks: Codable {
    var weekOfSemester: Int?
    var days: [Days]?
    var weekOfYear: Int?
    var firstDayOfWeek: String?
}


struct Days: Codable {
    var classes: [Classes]?
    var dayOfWeek: Int?
    var date: String?
}

struct Classes: Codable{
    var groups: String?
    var number: Int?
    var name: String?
    var place: String?
    var rawType: String?
    var time: Time?
    var person: String?
    var type: String?
}

struct Time: Codable {
    var start: String?
    var end: String?
}
