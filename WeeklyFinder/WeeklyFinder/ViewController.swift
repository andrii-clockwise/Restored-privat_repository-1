//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Andrew Mokin on 21.08.2020.
//  Copyright © 2020 Andrew Mokin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var showNewText: UILabel!
    @IBOutlet weak var dateInput: UITextField!
    @IBOutlet weak var weekIntup: UITextField!
    @IBOutlet weak var yearInput: UITextField!
    
    @IBAction func findTheDay(_ sender: UIButton) {
        var calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateInput.text!)
        dateComponents.month = Int(weekIntup.text!)
        dateComponents.year = Int(yearInput.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        
        let weekday = dateFormatter.string(from: date!)
        
        showNewText.text = weekday
    }
    
    
    
    @IBAction func setNewValue(_ sender: UIButton) {
        
    }
    


}

