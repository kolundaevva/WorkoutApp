//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 23.10.2022.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()

        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)

            let isToday = currentDay.stripTime() == Date().stripTime()
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.background

            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.Colors.inactive
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inactive
        }
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()

        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    override func configure() {
        super.configure()

        backgroundColor = .red
        
        layer.cornerRadius = 5
        clipsToBounds = true
        
        nameLabel.font = Resources.Fonts.helvelticaRegular(with: 9)
        nameLabel.textAlignment = .center

        dateLabel.font = Resources.Fonts.helvelticaRegular(with: 15)
        dateLabel.textAlignment = .center

        stackView.axis = .vertical
        stackView.spacing = 5
    }
}
