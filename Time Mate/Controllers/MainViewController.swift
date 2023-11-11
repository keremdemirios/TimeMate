//
//  MainViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModel = MainViewModel()
    
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
    
    func setNavigationBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
