//
//  SoundsPageViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 27.11.2023.
//

import UIKit

class SoundsPageViewController: UIViewController {
    
    // MARK : UI Elements
    @IBOutlet weak var soundsTableView: UITableView!
    var sounds = ["Sound 1", "Sound 2", "Sound 3"]
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Sound"
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        setupTableView()
        setNavigationBars()
    }
    // MARK : Setup UI
    private func setupUI(){
        
    }
    // MARK : Functions
    func setNavigationBars(){
        let leftBarButtonItem = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(didTapBack))
        leftBarButtonItem.tintColor = .systemOrange
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    // MARK : Actions
    @objc func didTapBack(){
        dismiss(animated: true)
        print("User came back from the alarm detail page.")
    }
}
