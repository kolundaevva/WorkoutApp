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

    func makeSystem(_ button: UIButton) {
        button.addTarget(self,
                         action: #selector(handleIn),
                         for: [
                            .touchDown,
                            .touchDragInside
                         ])

        button.addTarget(self,
                         action: #selector(handleOut),
                         for: [
                            .touchDragOutside,
                            .touchUpInside,
                            .touchUpOutside,
                            .touchDragExit,
                            .touchCancel
                         ])
    }

    @objc private func handleIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.15 }
    }

    @objc private func handleOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }
    }
}
