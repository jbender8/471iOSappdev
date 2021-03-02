//
//  SecondViewController.swift
//  Jbender_Assignment7
//
//  Created by Jessica Bender on 3/11/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit

var Labels : [String] = ["ABC", "CBS", "Disney", "Fox"]
var LabChannels : [String] = ["07", "02", "55", "32"]
extension Notification.Name {
    static let Favsave = Notification.Name("Favsave")
}


class SecondViewController: UIViewController {

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
        case 0: channel = LabChannels[0]
            curCh.text = channel
        case 1: channel = LabChannels[1]
            curCh.text = channel
        case 2: channel = LabChannels[2]
            curCh.text = channel
        case 3: channel = LabChannels[3]
            curCh.text = channel
        default:
            channel = LabChannels[0]
            curCh.text = channel
        }
        
    }
    
    @objc func setFavChannel(_ notifiaction: Notification){
        let z = Labels[0]
        let o = Labels[1]
        let t = Labels[2]
        let th = Labels[3]


        FavCh.setTitle(z, forSegmentAt: 0)
        FavCh.setTitle(o, forSegmentAt: 1)
        FavCh.setTitle(t, forSegmentAt: 2)
        FavCh.setTitle(th, forSegmentAt: 3)
    }
    

}

