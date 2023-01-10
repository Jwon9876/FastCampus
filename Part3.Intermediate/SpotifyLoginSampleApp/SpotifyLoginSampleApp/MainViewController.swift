//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by 최주원 on 2023/01/10.
//

import UIKit

class MainViewController: UIViewController{
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    
    @IBAction func logoutTapped(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
