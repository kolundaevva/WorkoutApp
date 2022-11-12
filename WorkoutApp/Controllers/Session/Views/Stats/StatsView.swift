//
//  StatsView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 11.11.2022.
//

import UIKit

final class StatsView: WABaseInfoView {
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15
        return stackView
    }()

    override func setupViews() {
        super.setupViews()

        addView(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }

    func configure(with items: [StatsItem]) {
        items.forEach {
            let view = StatsItemView()
            view.configure(with: $0)
            stackView.addArrangedSubview(view)
        }
    }
}
