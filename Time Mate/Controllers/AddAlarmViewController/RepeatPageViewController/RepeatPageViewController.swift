//
//  RepeatPageViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit

class RepeatPageViewController: UIViewController {

    // MARK : UI Elements
    let daysOfTheWeek: [String] = {
        let dateFormatter = DateFormatter()
        return dateFormatter.weekdaySymbols
    }()
    
    @IBOutlet weak var daysTableView: UITableView!
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Repeat"
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
        print("User came back from the add alarm page.")
    }
}
