//
//  StatsItemView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 11.11.2022.
//

import UIKit

enum StatsItem {
    case statsAvgSpeed(value: String)
    case statsHeartBeat(value: String)
    case statsTotalDistance(value: String)
    case statsTotalSteps(value: String)

    var data: StatsItemView.ItemData {
        switch self {
        case .statsAvgSpeed(let value):
            return .init(
                image: Resources.Images.Session.statsAvgSpeed,
                value: value + " / km",
                title: Resources.Strings.Session.averagePace
            )
        case .statsHeartBeat(let value):
            return .init(
                image: Resources.Images.Session.statsHeartBeat,
                value: value + " bpm",
                title: Resources.Strings.Session.heartRate
            )
        case .statsTotalDistance(let value):
            return .init(
                image: Resources.Images.Session.statsTotalDistance,
                value: value,
                title: Resources.Strings.Session.totalDistance
            )
        case .statsTotalSteps(let value):
            return .init(
                image: Resources.Images.Session.statsTotalSteps,
                value: value + " / km",
                title: Resources.Strings.Session.totalSteps
            )
        }
    }
}

final class StatsItemView: BaseView {
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
    }

    private let imageView = UIImageView()

    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helvelticaRegular(with: 17)
        label.textColor = Resources.Colors.titleGray
        return label
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helvelticaRegular(with: 10)
        label.textColor = Resources.Colors.inactive
        return label
    }()

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()

    func configure(with item: StatsItem) {
        imageView.image = item.data.image
        valueLabel.text = item.data.value
        titleLabel.text = item.data.title
    }
}

extension StatsItemView {
    override func setupViews() {
        super.setupViews()

        addView(imageView)
        addView(stackView)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(titleLabel)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 23),

            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
    }
}
