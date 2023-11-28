//
//  MainViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    // MARK : Elements
    var viewModel: MainViewModel = MainViewModel()
    
    // MARK : UI Elements
    @IBOutlet weak var clockTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Alarms"
        
        configure()
        
    }
    
    func configure(){
        setupTableView()
        setNavigationBar()
        reloadTableView()
    }
    // MARK : Set Navigation Bar
    func setNavigationBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // MARK : Right Bar - Add
        let rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
        rightBarButtonItem.tintColor = .systemOrange
        navigationItem.rightBarButtonItem = rightBarButtonItem
        // MARK : Left Bar - Edit
        let leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(didTapEdit))
        leftBarButtonItem.tintColor = .systemOrange
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    // MARK : Actions
    @objc func didTapAdd(){
        print("Add")
        let rootVc = AddAlarmViewController()
        let navVc = UINavigationController(rootViewController: rootVc)
        present(navVc, animated: true)
    }
    
    @objc func didTapEdit(){
        print("Edit")
    }
}
