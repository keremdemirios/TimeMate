//
//  RepeatPageViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit

extension RepeatPageViewController: UITableViewDelegate, UITableViewDataSource {
    


    func setupTableView(){
        daysTableView.delegate = self
        daysTableView.dataSource = self
        registerCells()
        configureTableView()
    }
    
    func registerCells(){
        daysTableView.register(RepeatPageTableViewCell.register(), forCellReuseIdentifier: RepeatPageTableViewCell.identifier)
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.daysTableView.reloadData()
        }
    }
    
    func configureTableView(){
        daysTableView.alwaysBounceVertical = false
        
        daysTableView.layer.borderWidth = 1
        daysTableView.layer.cornerRadius = 12
        
        daysTableView.layer.borderColor = UIColor.clear.cgColor
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfTheWeek.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RepeatPageTableViewCell.identifier, for: indexPath) as? RepeatPageTableViewCell else {
            print("RepeatPageTableViewCell does not support.")
            return UITableViewCell()
        }
        cell.backgroundColor = .systemGray5
        let day = daysOfTheWeek[indexPath.row]
        cell.dayLabel.text = "Every \(day)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
