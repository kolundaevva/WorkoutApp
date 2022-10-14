//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class OverviewController: BaseController {

    private let allWorkoutsButton = SecondaryButton()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension OverviewController {

    override func addViews() {
        super.addViews()

        view.addSubview(allWorkoutsButton)
    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }

    override func configure() {
        super.configure()

        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self,
                                    action: #selector(allWorkoutsPressed),
                                    for: .touchUpInside)
    }

    @objc private func allWorkoutsPressed() {
        print("AllWorkouts Button Pressed")
    }
}
