//
//  ViewController.swift
//  Homework009
//
//  Created by Chun-Yi Lin on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientImage: UIImageView!
    let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        gradientLayer.frame = gradientImage.bounds
        gradientLayer.colors = [UIColor(red: 0.8, green: 0, blue: 0, alpha: 1).cgColor, UIColor.orange.cgColor, UIColor(red: 0, green: 0.6, blue: 1, alpha: 1).cgColor]
        gradientLayer.locations = [0, 0.3, 0.8]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)

        gradientImage.layer.addSublayer(gradientLayer)

    }


}

