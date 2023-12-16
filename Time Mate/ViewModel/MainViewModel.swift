//
//  MainViewModel.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewModel {
    
    var cellDataSource: [ClockTableViewCellViewModel] = []
    
    func sortCellDataSourceByAlarmDate() {
        cellDataSource.sort { $0.alarmDate < $1.alarmDate }
    }
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRowsInSection(in section: Int) -> Int {
        return cellDataSource.count
    }
    
    func getData() {
        let currentData = UserDefaults.standard.string(forKey: "NewAlarm")
        
        if currentData != nil {
            
        } else {
            print("Data is empty.")
        }
    }
    
}
