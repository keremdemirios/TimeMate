//
//  MainViewModel.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewModel {
//    var isLoading: Observable<Bool> = Observable(false)
//    var cellDataSource: Observable<[MovieTableCellViewModel]> = Observable(nil)
//    var dataSource: TrendingMovieModel?
    
    var cellDataSource: [ClockTableViewCellViewModel] = [
    ClockTableViewCellViewModel(hour: "12:00", hourlyTime: "AM", alarmTitle: "Alarm 1", alarmSwitch: false),
    ClockTableViewCellViewModel(hour: "08:30", hourlyTime: "AM", alarmTitle: "Alarm 2", alarmSwitch: false),
    ClockTableViewCellViewModel(hour: "12:00", hourlyTime: "AM", alarmTitle: "Alarm 1", alarmSwitch: false)
    ]
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRowsInSection(in section: Int) -> Int {
        return cellDataSource.count
    }
    
}
