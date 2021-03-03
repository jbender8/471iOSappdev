//
//  DetailViewController.swift
//  jbender_Assignment8
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var Image: UIImageView!

    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                var completeWine = ""
                completeWine.append(detail.Name)
                completeWine.append("\n\n")
                completeWine.append("Country of Origin:\n")
                completeWine.append(detail.Country)
                completeWine.append("\n\n")
                completeWine.append("Color:\n")
                completeWine.append(detail.Color)
                completeWine.append("\n\nDescription:\n")
                completeWine.append(detail.Description)
                label.text = completeWine
            }
            if let image = Image{
                
                image.image = detail.Image
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Wines? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}
