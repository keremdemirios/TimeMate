//
//  MainViewModel.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewModel {
    
    var cellDataSource: [ClockTableViewCellViewModel] = [
        ClockTableViewCellViewModel(hour: "12:00", hourlyTime: "AM", alarmTitle: "Alarm 1", alarmSwitch: false, alarmDate: Date())
    ]
    
    func sortCellDataSourceByAlarmDate() {
        cellDataSource.sort { $0.alarmDate < $1.alarmDate }
    }
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRowsInSection(in section: Int) -> Int {
        return cellDataSource.count
    }
    
}
