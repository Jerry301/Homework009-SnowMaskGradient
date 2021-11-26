//
//  PhotoImageView.swift
//  Homework009
//
//  Created by Chun-Yi Lin on 2021/11/26.
//

import UIKit

class PhotoImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.width*0.5, y: 200))
        path.addQuadCurve(to: CGPoint(x: bounds.width*0.84, y: 200), controlPoint: CGPoint(x: bounds.width*0.75, y: 120))
        path.addQuadCurve(to: CGPoint(x: bounds.width*0.5, y: 500), controlPoint: CGPoint(x: bounds.width*0.95, y: 350))
        path.addQuadCurve(to: CGPoint(x: bounds.width*0.16, y: 200), controlPoint: CGPoint(x: bounds.width*0.05, y: 350))
        path.addQuadCurve(to: CGPoint(x: bounds.width*0.5, y: 200), controlPoint: CGPoint(x: bounds.width*0.25, y: 120))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.lineJoin = .round
        layer.mask = shapeLayer
    }
}
