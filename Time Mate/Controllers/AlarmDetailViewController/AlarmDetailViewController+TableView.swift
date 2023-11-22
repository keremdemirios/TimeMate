//
//  AlarmDetailViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

extension AlarmDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func setupTableView(){
        toolsTableView.delegate = self
        toolsTableView.dataSource = self
        
        toolsTableView.backgroundColor = .clear
        registerCells()
        configureTableView()
    }
    
    func registerCells(){
        toolsTableView.register(RepeatTableViewCell.register(), forCellReuseIdentifier: RepeatTableViewCell.identifier)
        toolsTableView.register(LabelTableViewCell.register(), forCellReuseIdentifier: LabelTableViewCell.identifier)
        toolsTableView.register(SoundTableViewCell.register(), forCellReuseIdentifier: SoundTableViewCell.identifier)
        toolsTableView.register(SnoozeTableViewCell.register(), forCellReuseIdentifier: SnoozeTableViewCell.identifier)
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.toolsTableView.reloadData()
        }
    }
    
    func configureTableView(){
        toolsTableView.alwaysBounceVertical = false
        
        toolsTableView.layer.borderWidth = 1
        toolsTableView.layer.cornerRadius = 12
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //        return viewModel.numberOfSections()
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        //        return viewModel.cellDataSource.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RepeatTableViewCell.identifier, for: indexPath) as? RepeatTableViewCell else {
                print("RepeatTableViewCell does not support.")
                return UITableViewCell()
            }
            return cell
        }
        if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LabelTableViewCell.identifier, for: indexPath) as? LabelTableViewCell else {
                print("LabelTableViewCell does not support.")
                return UITableViewCell()
            }
            return cell
        }
        if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SoundTableViewCell.identifier, for: indexPath) as? SoundTableViewCell else {
                print("SoundTableViewCell does not support.")
                return UITableViewCell()
            }
            return cell
        }
        if indexPath.row == 3 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SnoozeTableViewCell.identifier, for: indexPath) as? SnoozeTableViewCell else {
                print("SnoozeTableViewCell does not support.")
                return UITableViewCell()
            }
            return cell
        }
        
        return UITableViewCell()
    }
}
