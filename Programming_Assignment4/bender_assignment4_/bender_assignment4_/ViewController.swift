//
//  ViewController.swift
//  bender_assignment4_
//
//  Created by Jessica Bender on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currpower: UILabel!
    
    @IBOutlet weak var currvol: UILabel!
    
    @IBOutlet weak var currch: UILabel!
    
    @IBOutlet weak var power: UISwitch!
    
    @IBOutlet weak var vol: UISlider!
    
    @IBOutlet weak var zero: UIButton!
    
    @IBOutlet weak var one: UIButton!
    
    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    @IBOutlet weak var four: UIButton!
    
    @IBOutlet weak var five: UIButton!
    
    @IBOutlet weak var six: UIButton!
    
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var eight: UIButton!
    
    @IBOutlet weak var seven: UIButton!
    
    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var sub: UIButton!
    
    @IBOutlet weak var fav: UISegmentedControl!
    
    var chan = ""
    
    
    
    
    @IBAction func z(_ sender: Any) {
        if chan.count > 1{
            chan = "0"
            currch.text = chan
        }
    }
    
    @IBAction func onebnt(_ sender: Any) {
        if chan.count > 1{
            chan = "1"
            currch.text = chan
        }
    }
    
    @IBAction func twobnt(_ sender: Any) {
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

