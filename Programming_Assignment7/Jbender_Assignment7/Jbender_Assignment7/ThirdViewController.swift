//
//  ThirdViewController.swift
//  Jbender_Assignment7
//
//  Created by Jessica Bender on 3/11/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var DVRPower: UILabel!
    @IBOutlet weak var DVRbuttonbox: UIView!
    @IBOutlet weak var DVRState: UILabel!
    
    @IBAction func DVRPowerSwitch(_ sender: UISwitch) {
        if sender.isOn {
            DVRPower.text = "On"
            DVRState.text = "Stop"
            DVRbuttonbox.isUserInteractionEnabled = true
        }
        else {
            DVRPower.text = "Off"
            DVRState.text = "Stop"
            DVRbuttonbox.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func DVRPlay(_ sender: UIButton) {
        if DVRState.text == "Record"{
            let sheet = UIAlertController(title: "Unable to perform operation", message: "Cannot play during current operation. Stop current operation and proceed with requested operation?", preferredStyle: .actionSheet)
            let proceedActionButton = UIAlertAction(title: "Yes", style: .default) { _ in
                self.DVRState.text = sender.currentTitle
                let alert = UIAlertController(title: "Confirmation", message: "Current operation stopped. Proceeding with requested operation.", preferredStyle: .alert)
                let confirmActionButton = UIAlertAction(title: "OK", style: .default)
                alert.addAction(confirmActionButton)
                self.present(alert, animated: true)
            }
            let cancelActionButton = UIAlertAction(title: "No", style: .cancel)
            sheet.addAction(proceedActionButton)
            sheet.addAction(cancelActionButton)
            self.present(sheet, animated: true, completion: nil)
        }
        else {
            DVRState.text = sender.currentTitle
        }
    }
    @IBAction func DVRStop(_ sender: UIButton) {
        DVRState.text = sender.currentTitle

    }
    
    @IBAction func DVRPause(_ sender: UIButton) {
        if DVRState.text == "Play"{
           DVRState.text = sender.currentTitle
        }
        else {
            let error = UIAlertController(title: "Unable to perform operation", message: "Cannot play during current operation. Stop current operation and proceed with requested operation?", preferredStyle: .actionSheet)
                       let proceedActionButton = UIAlertAction(title: "Yes", style: .default) { _ in
                           self.DVRState.text = sender.currentTitle
                           let alert = UIAlertController(title: "Confirmation", message: "Current operation stopped. Proceeding with requested operation.", preferredStyle: .alert)
                           let confirmActionButton = UIAlertAction(title: "OK", style: .default)
                           alert.addAction(confirmActionButton)
                           self.present(alert, animated: true)
                       }
                       let cancelActionButton = UIAlertAction(title: "No", style: .cancel)
                       error.addAction(proceedActionButton)
                       error.addAction(cancelActionButton)
                       self.present(error, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func DVRFowd(_ sender: UIButton) {
        if DVRState.text == "Play"{
            DVRState.text = sender.currentTitle

        }
        else {
            let error = UIAlertController(title: "Unable to perform operation", message: "Cannot play during current operation. Stop current operation and proceed with requested operation?", preferredStyle: .actionSheet)
            let proceedActionButton = UIAlertAction(title: "Yes", style: .default) { _ in
                self.DVRState.text = sender.currentTitle
                let alert = UIAlertController(title: "Confirmation", message: "Current operation stopped. Proceeding with requested operation.", preferredStyle: .alert)
                let confirmActionButton = UIAlertAction(title: "OK", style: .default)
                alert.addAction(confirmActionButton)
                self.present(alert, animated: true)
            }
            let cancelActionButton = UIAlertAction(title: "No", style: .cancel)
            error.addAction(proceedActionButton)
            error.addAction(cancelActionButton)
            self.present(error, animated: true, completion: nil)
        }
    }
    
    @IBAction func DVRRewind(_ sender: UIButton) {
        if DVRState.text == "Play"{
            DVRState.text = sender.currentTitle

        }
        else {
            let error = UIAlertController(title: "Unable to perform operation", message: "Cannot play during current operation. Stop current operation and proceed with requested operation?", preferredStyle: .actionSheet)
            let proceedActionButton = UIAlertAction(title: "Yes", style: .default) { _ in
                self.DVRState.text = sender.currentTitle
                let alert = UIAlertController(title: "Confirmation", message: "Current operation stopped. Proceeding with requested operation.", preferredStyle: .alert)
                let confirmActionButton = UIAlertAction(title: "OK", style: .default)
                alert.addAction(confirmActionButton)
                self.present(alert, animated: true)
            }
            let cancelActionButton = UIAlertAction(title: "No", style: .cancel)
            error.addAction(proceedActionButton)
            error.addAction(cancelActionButton)
            self.present(error, animated: true, completion: nil)
        }
    }
    
    @IBAction func DVRrecord(_ sender: UIButton) {
        if DVRState.text == "Stop"{
            DVRState.text = sender.currentTitle

        }
        else {
            let error = UIAlertController(title: "Unable to perform operation", message: "Cannot play during current operation. Stop current operation and proceed with requested operation?", preferredStyle: .actionSheet)
            let proceedActionButton = UIAlertAction(title: "Yes", style: .default) { _ in
                self.DVRState.text = sender.currentTitle
                let alert = UIAlertController(title: "Confirmation", message: "Current operation stopped. Proceeding with requested operation.", preferredStyle: .alert)
                let confirmActionButton = UIAlertAction(title: "OK", style: .default)
                alert.addAction(confirmActionButton)
                self.present(alert, animated: true)
            }
            let cancelActionButton = UIAlertAction(title: "No", style: .cancel)
            error.addAction(proceedActionButton)
            error.addAction(cancelActionButton)
            self.present(error, animated: true, completion: nil)
        }
    }
}
