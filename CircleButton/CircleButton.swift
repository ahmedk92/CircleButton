//
//  CircleButton.swift
//  CircleButton
//
//  Created by Ahmed Khalaf on 7/3/20.
//  Copyright © 2020 io.github.ahmedkhalaf. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        cornerRadius = bounds.width / 2
    }
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        path.contains(point)
    }
    private var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        }
    }
    private lazy var path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
}
