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
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
