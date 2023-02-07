//
//  AddAlertViewController.swift
//  DrinkApp
//
//  Created by 최주원 on 2023/02/06.
//

import UIKit

class AddAlertViewController: UIViewController{
    
    var pickedDate: ((_ date: Date) -> Void)?
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        pickedDate?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
    
}
