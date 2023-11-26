//
//  RepeatPageTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 26.11.2023.
//

import UIKit

class RepeatPageTableViewCell: UITableViewCell {
    
    public static var identifier: String {
        get {
            return "RepeatPageTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "RepeatPageTableViewCell", bundle: nil)
    }
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var checkMarkImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configure(){
        checkMarkImageView.isHidden = true
    }
}
