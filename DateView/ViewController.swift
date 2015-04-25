//
//  ViewController.swift
//  DateView
//
//  Created by Stephen on 25/04/2015.
//  Copyright (c) 2015 vantech.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func showDay(sender: AnyObject) {
        // grab the chosen date
        var chosenDate = self.datePicker.date
        
        // Create an NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        // Grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        // Create alert controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        myAlert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        // Show the alert
        self.presentViewController(myAlert, animated: true, completion: nil )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

