//
//  MainViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func setupTableView(){
        clockTableView.delegate = self
        clockTableView.dataSource = self
        
        clockTableView.backgroundColor = .clear
        registerCells()
    }
    
    func registerCells(){
        clockTableView.register(MainClockTableViewCell.register(), forCellReuseIdentifier: MainClockTableViewCell.identifier)
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.clockTableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel.numberOfRowsInSection(in: section)
//        return cellDataSource.count
        return viewModel.cellDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainClockTableViewCell.identifier, for: indexPath) as? MainClockTableViewCell else {
            print("UITableViewCell does not support.")
            return UITableViewCell()
        }
        
        let cellViewModel = viewModel.cellDataSource[indexPath.row]
        cell.setupCell(viewModel: cellViewModel)
        cell.selectionStyle = .none
        
        return cell
    }
}
