//
//  MainClockTableViewCell.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit



class MainClockTableViewCell: UITableViewCell {
    
    public static var identifier: String {
        get {
            return "MainClockTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainClockTableViewCell", bundle: nil)
    }
    
    // UI Elements
    @IBOutlet weak var hourlyTimeLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var alarmTitleLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
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
        titleModeForSwitch()
    }
    
    func titleModeForSwitch(){
        if alarmSwitch.isOn {
            hourlyTimeLabel.textColor = .label
            hourLabel.textColor = .label
            alarmTitleLabel.textColor = .label
        } else {
            hourlyTimeLabel.textColor = .systemGray2
            hourLabel.textColor = .systemGray2
            alarmTitleLabel.textColor = .systemGray2
        }
    }
    
    // actions
    @IBAction func alarmSwitchAction(_ sender: Any) {
        if alarmSwitch.isOn {
            print("On")
            titleModeForSwitch()
        } else {
            print("Off")
            titleModeForSwitch()
        }
    }
    
    func setupCell(viewModel: ClockTableViewCellViewModel){
        self.hourlyTimeLabel.text = viewModel.hourlyTime
        self.hourLabel.text = viewModel.hour
        self.alarmTitleLabel.text = viewModel.alarmTitle
        self.alarmSwitch.isOn = viewModel.alarmSwitch
    }
    
}
