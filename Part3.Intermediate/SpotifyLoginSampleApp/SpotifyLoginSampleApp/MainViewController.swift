//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by 최주원 on 2023/01/10.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController{
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? ""
        
        welcomeLabel.text = """
            환영합니다.
            \(email)님
            """
    }
    
    
    @IBAction func logoutTapped(_ sender: UIButton) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError{
            print("ERROR: sign out \(signOutError.localizedDescription)")
        }
        
        
        self.navigationController?.popToRootViewController(animated: true)
    }
}
