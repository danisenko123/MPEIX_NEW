


import Foundation

struct Group: Codable {

    var weeks: [Weeks]?
    var id: String?
    var type: String?
    var name: String?

}

struct Weeks: Codable {

    var days: [Days]?
    var weekOfSemester: Int?
    var weekOfYear: Int?
    var firstDayOfWeek: String?

}

struct Days: Codable {

    var date: String?
    var dayOfWeek: Int?
    var classes: [Classes]?

}

struct Classes: Codable {

    var name: String?
    var rawType: String?
    var person: String?
    var place: String?
    var time: Time?
    var type: String?
    var groups: String?
    var number: Int?

}

struct Time: Codable {

    var end: String?
    var start: String?

}
