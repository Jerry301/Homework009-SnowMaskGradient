//
//  SnowViewController.swift
//  Homework009
//
//  Created by Chun-Yi Lin on 2021/11/25.
//

import UIKit

class SnowViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.4)
        let snowEmitterCell = CAEmitterCell()
        snowEmitterCell.contents = UIImage(named: "snow1")?.cgImage
        snowEmitterCell.birthRate = 5
        snowEmitterCell.lifetime = 20
        snowEmitterCell.velocity = 100
        snowEmitterCell.scale = 0.1
        snowEmitterCell.yAcceleration = 30
        
        let snowEmitterLayer = CAEmitterLayer()
        snowEmitterLayer.emitterCells = [snowEmitterCell]
        view.layer.addSublayer(snowEmitterLayer)
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        snowEmitterLayer.emitterShape = .line
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        snowEmitterCell.scale = 0.1
        snowEmitterCell.scaleRange = 0.05
    }
}
