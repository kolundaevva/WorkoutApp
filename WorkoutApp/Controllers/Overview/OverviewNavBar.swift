//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 22.10.2022.
//

import UIKit

final class OverviewNavBar: BaseView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.NavBar.overview
        label.textColor = Resources.Colors.titleGray
        label.font = Resources.Fonts.helvelticaRegular(with: 22)
        return label
    }()

    private let allWorkoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        return button
    }()

    private let addButton = UIButton()
    private let weekView = WeekView()

    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator, height: 1)
    }

    func addWorkoutAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }

    func addAddingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()

        addView(titleLabel)
        addView(allWorkoutsButton)
        addView(addButton)
        addView(weekView)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: topAnchor),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),

            allWorkoutsButton.topAnchor.constraint(equalTo: topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),

            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        backgroundColor = .white

        addButton.setImage(Resources.Images.Common.add, for: .normal)
    }

    @objc private func allWorkoutsPressed() {
        print("AllWorkouts Button Pressed")
    }
}
