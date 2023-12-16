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
        
        clockTableView.layer.borderWidth = 0
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
          print("Deleted")
          
          viewModel.cellDataSource.remove(at: indexPath.row)
          clockTableView.reloadData()
      }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let clock = viewModel.cellDataSource[indexPath.row]
        let rootVC = EditAlarmViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
        print("Came to self alarm detail page.")
    }
    
}
