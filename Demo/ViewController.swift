//
//  ViewController.swift
//  Demo
//
//  Created by Peter Pan on 2022/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageRatioConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func changeRatio(_ sender: UISegmentedControl) {
        imageRatioConstraint.isActive = false
        if sender.selectedSegmentIndex == 0 {
            imageRatioConstraint = imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1)
        } else {
            imageRatioConstraint = imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 16 / 9)
        }
        imageRatioConstraint.isActive = true

    }
    
}

