//
//  EditAlarmViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 28.11.2023.
//

import UIKit

class EditAlarmViewController: UIViewController {

    // MARK : UI Elements
    
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
    }
    // MARK : Setup UI
    private func setupUI(){
        
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
        dismiss(animated: true)
        print("Save")
    }
    
    @objc func didTapCancel(){
        dismiss(animated: true)
        print("Cancel tapped.")
    }


}
