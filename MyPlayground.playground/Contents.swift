import UIKit

test ()

func test()
{
    var cal = Calendar(identifier: .gregorian)
    
    cal.locale = Locale(identifier: "ja")
    
    guard let august2017 = cal.date(from: DateComponents(year: 2017, month: 8)) else {
        return
    }
    print("カレンダーはグレゴリオ暦、週の最初は日曜日であるとします")
    print("  Calendar Identifier = \(cal.identifier)")
    print("  First Weekday = \(cal.firstWeekday)")
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "d"
    dateFormatter.calendar = cal
    
    let yearMonthFomatter = DateFormatter()
    yearMonthFomatter.dateFormat = "yyyy 年 M 月"
    yearMonthFomatter.calendar = cal
    
    var components = cal.dateComponents([.year, .month], from: august2017)
    print(components)
//    components.weekdayOrdinal = 1 // 第１

    
    for week in 1...6 {
        components.weekOfMonth = week
        print("\n\(yearMonthFomatter.string(from: august2017)) の第 \(week) 日曜日 〜 土曜日")
        for weekday in 1...7 {
            components.weekday = weekday  // 曜日
            print(components)
            if let date = cal.date(from: components) {
                print("  \(cal.weekdaySymbols[weekday - 1]): \(dateFormatter.string(from: date))")
            }
        }
    }
}
