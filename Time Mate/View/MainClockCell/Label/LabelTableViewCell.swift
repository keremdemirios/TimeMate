//
//  LabelTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

protocol LabelTableViewCellDelegate: AnyObject {
    func didCurrentLabel(alarmLabel: String)
}

class LabelTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    public static var identifier: String {
        get {
            return "LabelTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "LabelTableViewCell", bundle: nil)
    }
    
    weak var delegate: LabelTableViewCellDelegate?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var alarmLabelTextField: UITextField!
    var currentAlarmLabel:String = "Default Label In Label Table View Cell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configure()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configure(){
        alarmLabelTextField.delegate = self
        
        alarmLabelTextField.backgroundColor = .clear
        alarmLabelTextField.textColor = .label
    }
    
    // MARK : UITextField Delegates
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if let text = alarmLabelTextField.text {
            print("End Label : \(text)")
            currentAlarmLabel = text
        }
        delegate?.didCurrentLabel(alarmLabel: currentAlarmLabel)
    }
}
