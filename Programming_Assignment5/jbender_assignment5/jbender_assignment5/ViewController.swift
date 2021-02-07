//
//  ViewController.swift
//  jbender_assignment5
//
//  Created by Jessica Bender on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var items: [(String, Int)] = []
    
    @IBOutlet weak var Descrip: UITextField!
    
    @IBOutlet weak var Des: UITextField!
    
    @IBOutlet weak var LIST: UILabel!
    
    
    @IBAction func list(_ sender: Any) {
        items = []
        LIST.text = "No Items"
    }
    
    @IBAction func item(_ sender: Any) {
        Des.text = ""
        Descrip.text = ""
        
        
    }
    
    @IBAction func add(_ sender: Any) {
        let alert = UIAlertController(title: "Invalid Input", message: "Descptions or Quanity invalid", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: {action in switch action.style{ case .default: print("default") case .cancel: print("cancel") case .destructive: print("destructive") }}))
        
        if (Int(Descrip.text!) ?? 0 < 1) || (Des.text == "") {
            self.present(alert, animated: true, completion: nil)
        }
        else{
            items.append((Des.text!, Int(Descrip.text!)!))
            LIST.text = ""
            LIST.numberOfLines = 0
            for i in items{
                LIST.text! += String(i.1) + "x" + i.0 + "\n"
            }
            LIST.sizeToFit()
        }
        Des.text = ""
        Descrip.text = ""
    }
    
    
    
}

