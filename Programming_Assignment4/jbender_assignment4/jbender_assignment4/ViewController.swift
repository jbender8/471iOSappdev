//
//  ViewController.swift
//  jbender_assignment4
//
//  Created by Jessica Bender on 2/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Power: UILabel!
    @IBOutlet weak var bnt0: UIButton!
    @IBOutlet weak var bnt1: UIButton!
    @IBOutlet weak var bnt2: UIButton!
    @IBOutlet weak var bnt3: UIButton!
    @IBOutlet weak var bnt4: UIButton!
    @IBOutlet weak var bnt5: UIButton!
    @IBOutlet weak var bnt6: UIButton!
    @IBOutlet weak var bnt7: UIButton!
    @IBOutlet weak var bnt8: UIButton!
    @IBOutlet weak var bnt9: UIButton!
    @IBOutlet weak var bntplus: UIButton!
    @IBOutlet weak var bntminus: UIButton!
    @IBOutlet weak var ChFavs: UISegmentedControl!
    @IBOutlet weak var vol: UISlider!
    @IBOutlet var chan: UILabel!
    @IBOutlet var volRN:UILabel!
    @IBOutlet weak var onoff: UISwitch!
    
    var channel = ""

    
    @IBAction func ch0bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "0"
            chan.text = channel
        }
        else {
            channel += "0"
            chan.text = channel
        }
    }
    
    @IBAction func ch1bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "1"
            chan.text = channel
        }
        else {
            channel += "1"
            chan.text = channel
        }
    }
    
    @IBAction func ch2bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "2"
            chan.text = channel
        }
        else {
            channel += "2"
            chan.text = channel
        }
    }
    
    @IBAction func ch3bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "3"
            chan.text = channel
        }
        else {
            channel += "3"
            chan.text = channel
        }
    }
    @IBAction func ch4bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "4"
            chan.text = channel
        }
        else {
            channel += "4"
            chan.text = channel
        }
    }
    
    @IBAction func ch5bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "5"
            chan.text = channel
        }
        else {
            channel += "5"
            chan.text = channel
        }
    }
    
    @IBAction func ch6bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "6"
            chan.text = channel
        }
        else {
            channel += "6"
            chan.text = channel
        }
    }
    
    @IBAction func ch7bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "7"
            chan.text = channel
        }
        else {
            channel += "7"
            chan.text = channel
        }
    }
    
    @IBAction func ch8bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "8"
            chan.text = channel
        }
        else {
            channel += "8"
            chan.text = channel
        }
    }
    
    @IBAction func ch9bnt(_ sender: Any) {
        if channel.count > 1 {
            channel = "9"
            chan.text = channel
        }
        else {
            channel += "9"
            chan.text = channel
        }
    }
    
    @IBAction func chplusbnt(_ sender: Any) {
        if Int(channel) == 99 {
            channel = "1"
            chan.text = channel
        }
        else {
            var temp = Int(channel) ?? 0
            temp += 1
            channel = String(temp)
            chan.text = channel
        }
    }
    @IBAction func chminbnt(_ sender: Any) {
        if Int(channel) ?? 0 <= 1 {
            channel = "99"
            chan.text = channel
        }
        else {
            var temp = Int(channel) ?? 0
            temp -= 1
            channel = String(temp)
            chan.text = channel
        }
    }
    
    @IBAction func volslider(_ sender: Any) {
        volRN.text = "\(Int(vol.value))"
    }
    
    @IBAction func onoffswitch(_ sender: Any) {
        if (sender as AnyObject).isOn {
            Power.text = "On"
            bnt0.isEnabled = true
            bnt1.isEnabled = true
            bnt2.isEnabled = true
            bnt3.isEnabled = true
            bnt4.isEnabled = true
            bnt5.isEnabled = true
            bnt6.isEnabled = true
            bnt7.isEnabled = true
            bnt8.isEnabled = true
            bnt9.isEnabled = true
            bntplus.isEnabled = true
            bntminus.isEnabled = true
            ChFavs.isEnabled = true
            vol.isEnabled = true
        }
        else{
            Power.text = "Off"
            bnt0.isEnabled = false
            bnt1.isEnabled = false
            bnt2.isEnabled = false
            bnt3.isEnabled = false
            bnt4.isEnabled = false
            bnt5.isEnabled = false
            bnt6.isEnabled = false
            bnt7.isEnabled = false
            bnt8.isEnabled = false
            bnt9.isEnabled = false
            bntplus.isEnabled = false
            bntminus.isEnabled = false
            ChFavs.isEnabled = false
            vol.isEnabled = false
        }
    }
    
    @IBAction func favchoose(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0: channel = "260"
            chan.text = channel
        case 1: channel = "385"
            chan.text = channel
        case 2: channel = "180"
            chan.text = channel
        case 3: channel = "7"
            chan.text = channel
        default:
            channel = "260"
            chan.text = channel
        }
    }
    
    
}

