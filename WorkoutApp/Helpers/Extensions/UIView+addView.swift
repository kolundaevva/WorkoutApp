//
//  UIView+addView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 22.10.2022.
//

import UIKit

extension UIView {
    func addView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
