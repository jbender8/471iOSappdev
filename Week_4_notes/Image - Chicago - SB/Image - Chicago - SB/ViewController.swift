//
//  ViewController.swift
//  Image - Chicago - SB
//
//  Created by Xiaoping Jia on 12/20/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let name = sender.currentTitle {
            image.image = UIImage(named: name)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

