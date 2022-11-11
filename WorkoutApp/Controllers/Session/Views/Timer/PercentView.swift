//
//  PercentView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 10.11.2022.
//

import UIKit

extension TimerView {
    final class PercentView: BaseView {

        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.distribution = .fillProportionally
            stackView.spacing = 5
            return stackView
        }()

        private let percentLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helvelticaRegular(with: 23)
            label.textColor = Resources.Colors.titleGray
            label.textAlignment = .center
            return label
        }()

        private let subtitleLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helvelticaRegular(with: 10)
            label.textColor = Resources.Colors.inactive
            label.textAlignment = .center
            return label
        }()

        override func setupViews() {
            super.setupViews()

            addView(stackView)

            stackView.addArrangedSubview(percentLabel)
            stackView.addArrangedSubview(subtitleLabel)
        }

        override func constraintViews() {
            super.constraintViews()

            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: topAnchor),
                stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }

        override func configureAppearance() {
            super.configureAppearance()
        }

        func configure(with title: String, and percent: Int) {
            subtitleLabel.text = title
            percentLabel.text = "\(percent)%"
        }
    }
}
