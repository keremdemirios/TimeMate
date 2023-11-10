//
//  MainViewController.swift
//  Time Mate
//
//  Created by Kerem Demir on 11.11.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var clockTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        setNavigationBarButtons()
    }
    
    func setNavigationBarButtons(){
        
    }
}
