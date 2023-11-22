//
//  SnoozeTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

class SnoozeTableViewCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "SnoozeTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "SnoozeTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var snoozeLabel: UILabel!
    @IBOutlet weak var snoozeSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configure()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(){
        
    }
    
}
