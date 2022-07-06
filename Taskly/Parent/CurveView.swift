//
//  CurveView.swift
//  Taskly
//
//  Created by PCS213 on 06/07/22.
//

import Foundation
import UIKit

class CurveView: UIView {

    let shapeLayer: CAShapeLayer = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    func commonInit() -> Void {

        layer.addSublayer(shapeLayer)
        shapeLayer.strokeColor = UIColor.red.cgColor
      //  shapeLayer.lineWidth = 11.0

    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: bounds.height))
        path.addArc(withCenter: CGPoint(x: bounds.width - 20, y: 20), radius: 20, startAngle: CGFloat.pi * 3 / 2, endAngle: 0, clockwise: true)

        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        path.close()

    }
}
