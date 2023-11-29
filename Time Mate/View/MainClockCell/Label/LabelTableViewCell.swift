//
//  LabelTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

class LabelTableViewCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "LabelTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "LabelTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var alarmLabelTextField: UITextField!
    
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
        alarmLabelTextField.backgroundColor = .clear
    }
    
}
