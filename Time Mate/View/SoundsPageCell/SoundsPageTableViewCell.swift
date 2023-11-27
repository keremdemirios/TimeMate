//
//  SoundsPageTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 27.11.2023.
//

import UIKit

class SoundsPageTableViewCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "SoundsPageTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "SoundsPageTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var soundNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
