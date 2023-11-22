//
//  SoundTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

class SoundTableViewCell: UITableViewCell {
    
    public static var identifier: String {
        get {
            return "SoundTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "SoundTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var soundLabel: UILabel!
    
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
