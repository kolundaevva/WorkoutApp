//
//  UIView+Bolder.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let borderView = UIView()
        borderView.backgroundColor = color
        borderView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        borderView.frame = CGRect(x: 0,
                                  y: frame.height - height,
                                  width: frame.width,
                                  height: height)
        addSubview(borderView)
    }
}
