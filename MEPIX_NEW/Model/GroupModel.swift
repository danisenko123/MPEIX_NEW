import Foundation


struct Group: Codable{
    var name: String
    var id: String
    var type: String
    var weeks: [Week]
    
}

struct Week: Codable {
    var weekOfYear: Int
    var weekOfSemester: Int
    var firstDayOfWeek: String
    var days: [Day]
}

struct Day: Codable {
    var dayOfWeek: Int
    var date: String
    var classes: [Class]
}

struct Class: Codable {
    var name: String
    var typ: String
    var place: String
    var groups: String
    var person: String
    var time: Time
    var number: Int
    var rawType: String
}

struct Time: Codable {
    var start: String
    var end: String
}



