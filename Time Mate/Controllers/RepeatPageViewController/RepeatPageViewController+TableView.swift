//
//  RepeatPageViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit

extension RepeatPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
