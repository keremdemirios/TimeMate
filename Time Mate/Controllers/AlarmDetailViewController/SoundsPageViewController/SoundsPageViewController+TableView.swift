//
//  RepeatPageViewController+TableView.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit
import AudioToolbox

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
    
    func setId(){
        let systemSoundIds: [SystemSoundID] = Array(1000...4000).map { SystemSoundID($0)}
            for id in systemSoundIds {
                AudioServicesPlaySystemSound(id)
            }
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
        cell.soundNameLabel.text = "Sound \(indexPath.row + 1)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
        if indexPath.row == 1 {
            AudioServicesPlaySystemSound(SystemSoundID(1000))
        }
        if indexPath.row == 2 {
            AudioServicesPlaySystemSound(SystemSoundID(1304))
        }
        if indexPath.row == 3 {
            AudioServicesPlaySystemSound(SystemSoundID(1600))
        }
        if indexPath.row == 4 {
            AudioServicesPlaySystemSound(SystemSoundID(2137))
        }
        if indexPath.row == 5 {
            AudioServicesPlaySystemSound(SystemSoundID(3000))
        }
        if indexPath.row == 6 {
            AudioServicesPlaySystemSound(SystemSoundID(3450))
        }
        if indexPath.row == 7 {
            AudioServicesPlaySystemSound(SystemSoundID(2764))
        }
        if indexPath.row == 8 {
            AudioServicesPlaySystemSound(SystemSoundID(1560))
        }
        if indexPath.row == 9 {
            AudioServicesPlaySystemSound(SystemSoundID(3333))
        }
        print(indexPath.row + 1)
    }
}

