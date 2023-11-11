//
//  MainViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var cellDataSource: [ClockTableViewCellViewModel] = [
    ClockTableViewCellViewModel(hour: "12:00", hourlyTime: "AM", alarmTitle: "Alarm 1", alarmSwitch: true),
    ClockTableViewCellViewModel(hour: "08:30", hourlyTime: "AM", alarmTitle: "Alarm 2", alarmSwitch: false)]
    
    var viewModel: MainViewModel = MainViewModel()
    
    @IBOutlet weak var clockTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        setupTableView()
        setNavigationBarButtons()
        reloadTableView()
    }
    
    func setNavigationBarButtons(){
        
    }
}
