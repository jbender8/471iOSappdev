//
//  ViewController.swift
//  bender_assignment3
//
//  Created by Jessica Bender on 1/26/21.
//

import UIKit

class ViewController: UIViewController {
    var num = ""
    var total = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func one(_ sender: Any) {
        num += "1"
        output.text = num
    }
    
    @IBAction func two(_ sender: Any) {
        num += "2"
        output.text = num

    }
    
    @IBAction func three(_ sender: Any) {
        num += "3"
        output.text = num

    }
    
    
    @IBAction func four(_ sender: Any) {
        num += "4"
        output.text = num

    }
    
    @IBAction func five(_ sender: Any) {
        num += "5"
        output.text = num

    }
    
    @IBAction func six(_ sender: Any) {
        num += "6"
        output.text = num

    }
    
    @IBAction func seven(_ sender: Any) {
        num += "7"
        output.text = num

    }
    
    @IBAction func eight(_ sender: Any) {
        num += "8"
        output.text = num

    }
    
    @IBAction func nine(_ sender: Any) {
        num += "9"
        output.text = num

    }
    
    @IBAction func zero(_ sender: Any) {
        num += "0"
        output.text = num

    }
    
    @IBAction func add(_ sender: Any) {
        total += Int(num) ?? 0
        output.text = String(total)
        num = ""
    }
    
    @IBAction func equal(_ sender: Any) {
        total += Int(num) ?? 0
        output.text = String(total)
        num = ""
    }
    

    @IBAction func clear(_ sender: Any) {
        num = ""
        output.text = num
        total=0
    }
    @IBOutlet weak var output: UILabel!
}

