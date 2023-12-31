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

class AddAlarmViewController: UIViewController, LabelTableViewCellDelegate {
    
    var viewModel: MainViewModel = MainViewModel()
    weak var delegate: AddAlarmViewControllerDelegate?
    
    // MARK : UI Elements
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var toolsTableView: UITableView!
    var currentTime:String  = ""
    var currentLabel:String = ""
    var currentAMPM:String  = ""
    
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
    
    func didCurrentLabel(alarmLabel: String) {
        self.currentLabel = alarmLabel
    }
    // MARK : Actions
    @objc func didTapAdd(){
        let newAlarm = ClockTableViewCellViewModel(hour: currentTime,
                                                  hourlyTime: currentAMPM,
                                                  alarmTitle: currentLabel,
                                                  alarmSwitch: true,
                                                  alarmDate: Date()
        )
        delegate?.didAddNewAlarm(newAlarm: newAlarm)
        
//        UserDefaults.standard.set(newAlarm, forKey: "NewAlarm")
        
        dismiss(animated: true)
        print("Added the new alarm.")
        print("Curent Label : \(currentLabel)")
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
        dateFormatter.dateFormat = "h:mm" // Saat ve dakika formatı AM - PM cinsinden
        
        let AmPmFormatter = DateFormatter()
        AmPmFormatter.dateFormat = "a"
        let AmPm = AmPmFormatter.string(from: selectedDate)
        currentAMPM = AmPm
        
        let formattedTime = dateFormatter.string(from: selectedDate)
        currentTime = formattedTime
        
        // 3. Saati yazdır
        print("AM - PM   Time: \(currentAMPM)")
        print("Current Time  : \(currentTime)")
    }
}
