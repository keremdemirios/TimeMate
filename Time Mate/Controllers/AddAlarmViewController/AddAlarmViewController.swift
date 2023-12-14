// repeat - label - sound - snooze
//  AddAlarmViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 12.11.2023.
//

import UIKit

protocol AddAlarmViewControllerDelegate: AnyObject {
    func didAddNewAlarm(newAlarm: ClockTableViewCellViewModel)
}

class AddAlarmViewController: UIViewController {
    
    var viewModel: MainViewModel = MainViewModel()
    weak var delegate: AddAlarmViewControllerDelegate?
    
    // MARK : UI Elements
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var toolsTableView: UITableView!
    var currentTime:String = "00:00"
    var currentLabel:String = "ALARM"
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Alarms"
        view.backgroundColor = .systemBackground
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        setupTableView()
        setNavigationBar()
        hideKeyboardWhenTappedAround()
    }
    // MARK : Setup UI
    private func setupUI(){
        print("Eklenmeden Once Mevcut Alarm Sayisi : \(viewModel.cellDataSource.count)")
        print(viewModel.cellDataSource)
    }
    // MARK : Functions
    // MARK : Set Navigation Bar
    func setNavigationBar(){
        // MARK : Right Bar - Add
        let rightBarButtonItem = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(didTapAdd))
        rightBarButtonItem.tintColor = .systemOrange
        navigationItem.rightBarButtonItem = rightBarButtonItem
        // MARK : Left Bar - Edit
        let leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(didTapCancel))
        leftBarButtonItem.tintColor = .systemOrange
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    // MARK : Actions
    @objc func didTapAdd(){
        let newAlarm = ClockTableViewCellViewModel(hour: currentTime,
                                                  hourlyTime: currentLabel,
                                                  alarmTitle: "AM",
                                                  alarmSwitch: true,
                                                  alarmDate: Date()
        )
        delegate?.didAddNewAlarm(newAlarm: newAlarm)
        dismiss(animated: true)
        print("Added the new alarm.")
        print("Cuurent Label : \(currentLabel)")
    }
    
    @objc func didTapCancel(){
        dismiss(animated: true)
        print("Cancel tapped.")
    }
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        // 1. Tarihi al
        let selectedDate = datePicker.date

        // 2. DateFormatter kullanarak tarihi saate çevir
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a" // Saat ve dakika formatı AM - PM cinsinden
        let formattedTime = dateFormatter.string(from: selectedDate)
        currentTime = formattedTime
        // 3. Saati yazdır
        print("Formatted Time: \(formattedTime)")
        print("Current Time : \(currentTime)")
    }
}

