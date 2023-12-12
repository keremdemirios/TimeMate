//
//  LabelTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 18.11.2023.
//

import UIKit

class LabelTableViewCell: UITableViewCell, UITextFieldDelegate {
    
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
        alarmLabelTextField.textColor = .label
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newTitle = (alarmLabelTextField.text as? NSString)?.replacingCharacters(in: range, with: string) ?? ""
        
        return true
    }
    
}
