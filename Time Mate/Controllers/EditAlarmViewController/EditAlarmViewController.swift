//
//  EditAlarmViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 28.11.2023.
//

import UIKit

protocol UpdateAlarmDelegate: AnyObject {
    func updateClock(newTime: String)
}

class EditAlarmViewController: UIViewController {
    
    // MARK : Delegate
    weak var delegate: UpdateAlarmDelegate?
    
    // MARK : UI Elements
    @IBOutlet weak var clockDatePicker: UIDatePicker!
    @IBOutlet weak var toolsTableView: UITableView!
    @IBOutlet weak var deleteAlarmButton: UIButton!
    
    var currentTime:String = "00:00"
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Alarm"
        view.backgroundColor = .systemBackground
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        setNavigationBar()
        setupTableView()
        hideKeyboardWhenTappedAround()
    }
    // MARK : Setup UI
    private func setupUI(){
        deleteAlarmButton.layer.borderWidth = 1
        deleteAlarmButton.layer.cornerRadius = 12
        deleteAlarmButton.layer.borderColor = UIColor.clear.cgColor
        deleteAlarmButton.backgroundColor = .systemGray5
    }

    // MARK : Functions
    func setNavigationBar(){
        // MARK : Right Bar - Add
        let rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
        rightBarButtonItem.tintColor = .systemOrange
        navigationItem.rightBarButtonItem = rightBarButtonItem
        // MARK : Left Bar - Edit
        let leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(didTapCancel))
        leftBarButtonItem.tintColor = .systemOrange
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    // MARK : Actions
    @objc func didTapSave(){
        delegate?.updateClock(newTime: currentTime)
        dismiss(animated: true)
        print("Save")
    }
    
    @objc func didTapCancel(){
        dismiss(animated: true)
        print("Cancel tapped.")
    }
    
    @IBAction func didTapDelete(_ sender: Any) {
        print("Deleted alarm.")
    }
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        // 1. Tarihi al
        let selectedDate = clockDatePicker.date

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
