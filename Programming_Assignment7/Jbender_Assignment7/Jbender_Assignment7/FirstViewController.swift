//
//  FirstViewController.swift
//  Jbender_Assignment7
//
//  Created by Jessica Bender on 3/11/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

      override func viewDidLoad() {
            super.viewDidLoad()

            channelStepOutlet.autorepeat = true
            channelStepOutlet.wraps = true
            channelStepOutlet.maximumValue = 99
            channelStepOutlet.minimumValue = 1
            // Do any additional setup after loading the view.
        }
        
        @IBOutlet weak var buttonsSeg: UISegmentedControl!
        @IBOutlet weak var labelTextField: UITextField!
        @IBOutlet weak var channelStepOutlet: UIStepper!
        @IBOutlet weak var channelOutlet: UILabel!
        
        @IBAction func channelStep(_ sender: UIStepper) {
            channelOutlet.text = Int(sender.value).description
        }
        
        @IBAction func cancel(_ sender: UIButton) {
            labelTextField.text = ""
            channelStepOutlet.value = 1
            channelOutlet.text = "1"
        }
        
        @IBAction func save(_ sender: UIButton) {
            if (labelTextField.text!.count < 1 || labelTextField.text!.count > 4) {
                let alert = UIAlertController(title: "Invalid Label Length", message: "Label must be between 1 and 4 characters long", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { ACTION in
                }))
                self.present(alert, animated: true)
            }
            else {
                if channelOutlet.text!.count == 2 {
                    LabChannels[buttonsSeg.selectedSegmentIndex] = channelOutlet.text!
                }
                else {
                    LabChannels[buttonsSeg.selectedSegmentIndex] = "0" + channelOutlet.text!
                }
                Labels[buttonsSeg.selectedSegmentIndex] = labelTextField.text!
                NotificationCenter.default.post(name: .Favsave, object: nil)
            }
        }
    }
