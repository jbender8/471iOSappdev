//
//  ViewController.swift
//  Bender_Assignment4
//
//  Created by Jessica Bender on 3/10/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ch0: UIButton!
    @IBOutlet weak var ch1: UIButton!
    @IBOutlet weak var ch2: UIButton!
    @IBOutlet weak var ch3: UIButton!
    @IBOutlet weak var ch4: UIButton!
    @IBOutlet weak var ch5: UIButton!
    @IBOutlet weak var ch6: UIButton!
    @IBOutlet weak var ch7: UIButton!
    @IBOutlet weak var ch8: UIButton!
    @IBOutlet weak var ch9: UIButton!
    @IBOutlet weak var chPlus: UIButton!
    @IBOutlet weak var FavCh: UISegmentedControl!
    @IBOutlet weak var chMinus: UIButton!
    @IBOutlet weak var volume: UISlider!
    @IBOutlet weak var curCh: UILabel!
    @IBOutlet weak var curVol: UILabel!
    @IBOutlet weak var power: UILabel!
    
    var channel = ""

    
    @IBAction func ch0Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "0"
            curCh.text = channel
        }
        else {
            channel += "0"
            curCh.text = channel
        }
    }
    
    @IBAction func ch1Button(_ sender: UIButton) {
        if channel.count > 1 {
            channel = "1"
            curCh.text = channel
        }
        else {
            channel += "1"
            curCh.text = channel
        }
    }
    
    @IBAction func ch2Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "2"
            curCh.text = channel
        }
        else {
            channel += "2"
            curCh.text = channel
        }
    }
    
    @IBAction func ch3Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "3"
            curCh.text = channel
        }
        else {
            channel += "3"
            curCh.text = channel
        }
    }
    
    @IBAction func ch4Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "4"
            curCh.text = channel
        }
        else {
            channel += "4"
            curCh.text = channel
        }
    }
    
    @IBAction func ch5Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "5"
            curCh.text = channel
        }
        else {
            channel += "5"
            curCh.text = channel
        }
    }
    
    @IBAction func ch6Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "6"
            curCh.text = channel
        }
        else {
            channel += "6"
            curCh.text = channel
        }
    }
    
    @IBAction func ch7Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "7"
            curCh.text = channel
        }
        else {
            channel += "7"
            curCh.text = channel
        }
    }
    
    @IBAction func ch8Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "8"
            curCh.text = channel
        }
        else {
            channel += "8"
            curCh.text = channel
        }
    }
    
    @IBAction func ch9Button(_ sender: Any) {
        if channel.count > 1 {
            channel = "9"
            curCh.text = channel
        }
        else {
            channel += "9"
            curCh.text = channel
        }
    }
    
    @IBAction func chPlusButton(_ sender: Any) {
        if Int(channel) == 99 {
            channel = "1"
            curCh.text = channel
        }
        else {
            var temp = Int(channel) ?? 0
            temp += 1
            channel = String(temp)
            curCh.text = channel
        }
    }
    
    @IBAction func chMinusButton(_ sender: Any) {
        if Int(channel) ?? 0 <= 1 {
            channel = "99"
            curCh.text = channel
        }
        else {
            var temp = Int(channel) ?? 0
            temp -= 1
            channel = String(temp)
            curCh.text = channel
        }
    }
    
    
    @IBAction func powerSwitch(_ sender: Any) {
        if (sender as AnyObject).isOn {
            power.text = "On"
            ch0.isEnabled = true
            ch1.isEnabled = true
            ch2.isEnabled = true
            ch3.isEnabled = true
            ch4.isEnabled = true
            ch5.isEnabled = true
            ch6.isEnabled = true
            ch7.isEnabled = true
            ch8.isEnabled = true
            ch9.isEnabled = true
            chPlus.isEnabled = true
            chMinus.isEnabled = true
            FavCh.isEnabled = true
            volume.isEnabled = true
        }
        else{
            power.text = "Off"
            ch0.isEnabled = false
            ch1.isEnabled = false
            ch2.isEnabled = false
            ch3.isEnabled = false
            ch4.isEnabled = false
            ch5.isEnabled = false
            ch6.isEnabled = false
            ch7.isEnabled = false
            ch8.isEnabled = false
            ch9.isEnabled = false
            chPlus.isEnabled = false
            chMinus.isEnabled = false
            FavCh.isEnabled = false
            volume.isEnabled = false
        }
    }
    
    @IBAction func volSlide(_ sender: Any) {
        curVol.text = "\(Int(volume.value))"

    }
    
    @IBAction func favChan(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0: channel = "7"
            curCh.text = channel
        case 1: channel = "2"
            curCh.text = channel
        case 2: channel = "55"
            curCh.text = channel
        case 3: channel = "32"
            curCh.text = channel
        default:
            channel = "7"
            curCh.text = channel
        }
        
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

