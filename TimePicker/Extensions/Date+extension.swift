//
//  Date+extension.swift
//  TimePicker
//
//  Created by Kazuya Ueoka on 2020/02/13.
//  Copyright © 2020 fromKK. All rights reserved.
//

import Foundation

extension Date {
    func isHoliday(_ calendar: Calendar = .init(identifier: .gregorian), timeZone: TimeZone = .current) -> Bool {
        var calendar = calendar
        calendar.timeZone = timeZone
        return [1, 7].contains(calendar.component(.weekday, from: self))
    }
}