//
//  ToolsTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

class ToolsTableViewCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "FirstCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "FirstCell", bundle: nil)
    }
    
}
