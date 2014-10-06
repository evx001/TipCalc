//
//  ViewController.swift
//  TipCalc
//
//  Created by evx on 10/4/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculateTapped(sender: AnyObject) {
    }

    @IBAction func taxPercentChaged(sender: AnyObject) {
    }
    @IBAction func viewTapped(sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

