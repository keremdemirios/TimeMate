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
    }
    
    func registerCells(){
//        toolsTableView.register(MainClockTableViewCell.register(), forCellReuseIdentifier: MainClockTableViewCell.identifier)
        
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.toolsTableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        return viewModel.numberOfSections()
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
//        return viewModel.cellDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainClockTableViewCell.identifier, for: indexPath) as? MainClockTableViewCell else {
            print("UITableViewCell does not support.")
            return UITableViewCell()
        }
        
//        let cellViewModel = viewModel.cellDataSource[indexPath.row]
//        cell.setupCell(viewModel: cellViewModel)
//        cell.selectionStyle = .none
        
        return cell
    }
}
