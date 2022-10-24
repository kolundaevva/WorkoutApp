//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

enum NavBarItemPosition {
    case left
    case right
}

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension BaseController {

    func setupViews() {}
    func constraintViews() {}
    func configureAppearance() {
        view.backgroundColor = Resources.Colors.background
    }

    func navBarLeftButtonHandler() {
        print("Left button pressed")
    }

    func navBarRightButtonHandler() {
        print("Right button pressed")
    }
}

extension BaseController {
    func addNavBarItem(at position: NavBarItemPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = Resources.Fonts.helvelticaRegular(with: 17)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)

        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
