//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 14.10.2022.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {

    private var type: WAButtonType = .primary

    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()

    let iconView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        return view
    }()

    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type

        setupViews()
        constraintViews()
        configureAppearance()
    }

    func setTitle(_ title: String?) {
        label.text = title
    }

    required init?(coder: NSCoder) {
        super.init(frame: .zero)

        setupViews()
        constraintViews()
        configureAppearance()
    }
}

private extension WAButton {
    func setupViews() {
        addView(label)
        addView(iconView)
    }

    func constraintViews() {
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }

        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),

            label.centerYAnchor.constraint(equalTo: iconView.centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2)
        ])
    }

    func configureAppearance() {
        switch type {
        case .primary:
            label.textColor = Resources.Colors.inactive
            label.font = Resources.Fonts.helvelticaRegular(with: 13)
            iconView.tintColor = Resources.Colors.inactive
        case .secondary:
            backgroundColor = Resources.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = Resources.Colors.active
            label.font = Resources.Fonts.helvelticaRegular(with: 15)
            iconView.tintColor = Resources.Colors.active
        }

        makeSystem(self)
    }
}
