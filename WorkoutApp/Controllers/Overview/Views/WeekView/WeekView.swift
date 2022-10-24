//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 23.10.2022.
//

import UIKit

final class WeekView: BaseView {
    private let stackView = UIStackView()
    private let calendar = Calendar.current
}

extension WeekView {
    override func addViews() {
        super.addViews()

        addView(stackView)
    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configure() {
        super.configure()

        stackView.distribution = .fillEqually
        stackView.spacing = 7

        var weekdays = calendar.shortWeekdaySymbols

        if calendar.firstWeekday == 1 {
            let sunday = weekdays.removeFirst()
            weekdays.append(sunday)
        }
        
        weekdays.enumerated().forEach { index, day in
            let view = WeekdayView()
            view.configure(with: index, and: day)
            stackView.addArrangedSubview(view)
        }
    }
}
