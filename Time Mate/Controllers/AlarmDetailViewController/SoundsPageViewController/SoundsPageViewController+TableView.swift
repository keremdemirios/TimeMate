//
//  RepeatPageViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit

extension SoundsPageViewController: UITableViewDelegate, UITableViewDataSource {

    func setupTableView(){
        soundsTableView.delegate = self
        soundsTableView.dataSource = self
        registerCells()
        configureTableView()
    }
    
    func registerCells(){
        soundsTableView.register(SoundsPageTableViewCell.register(), forCellReuseIdentifier: SoundsPageTableViewCell.identifier)
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.soundsTableView.reloadData()
        }
    }
    
    func configureTableView(){
        soundsTableView.alwaysBounceVertical = false
        
        soundsTableView.layer.borderWidth = 1
        soundsTableView.layer.cornerRadius = 12
        
        soundsTableView.layer.borderColor = UIColor.clear.cgColor
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sounds.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SoundsPageTableViewCell.identifier, for: indexPath) as? SoundsPageTableViewCell else {
            print("Repeat page tableview cell does not support...")
            return UITableViewCell()
        }
        cell.backgroundColor = .systemGray4
        cell.soundNameLabel.text = sounds[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

