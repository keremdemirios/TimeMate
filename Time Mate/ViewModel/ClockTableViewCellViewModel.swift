//
//  ClockTableViewCellViewModel.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import Foundation
import UIKit

class ClockTableViewCellViewModel {
    var id = UUID()
//    var hour: Date
    var hour: String
    var hourlyTime: String
    var alarmTitle: String
    var alarmSwitch: Bool
    
    init(id: UUID = UUID(), hour: String, hourlyTime: String, alarmTitle: String, alarmSwitch: Bool) {
        self.id = id
        self.hour = hour
        self.hourlyTime = hourlyTime
        self.alarmTitle = alarmTitle
        self.alarmSwitch = alarmSwitch
    }
}

//@IBOutlet weak var hourlyTimeLabel: UILabel!
//@IBOutlet weak var hourLabel: UILabel!
//@IBOutlet weak var alarmTitleLabel: UILabel!
//@IBOutlet weak var alarmSwitch: UISwitch!
