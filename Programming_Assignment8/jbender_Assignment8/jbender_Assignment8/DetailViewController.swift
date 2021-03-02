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

    //@IBOutlet weak var imageView: UIImageView!
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                var completeBook = ""
                completeBook.append(detail.Title)
                completeBook.append("\n\n")
                completeBook.append("Author:\n")
                completeBook.append(detail.Author)
                completeBook.append("\n\nDescription:\n")
                completeBook.append(detail.Description)
                label.text = completeBook
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Books? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}
