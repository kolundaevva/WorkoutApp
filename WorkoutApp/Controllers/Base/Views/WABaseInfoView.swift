//
//  BaseInfoView.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 24.10.2022.
//

import UIKit

class WABaseInfoView: BaseView {
    private let titleLabel: UILabel = {
        let title = UILabel()
        title.font = Resources.Fonts.helvelticaRegular(with: 13)
        title.textColor = Resources.Colors.inactive
        title.text = "Text".uppercased()
        return title
    }()

    private let button = WAButton(with: .primary)

    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resources.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()

    init(with title: String? = nil, buttonTitle: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left

        button.setTitle(buttonTitle)
        button.isHidden = buttonTitle == nil

        super.init(frame: .zero)
    }

    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension WABaseInfoView {
    override func setupViews() {
        super.setupViews()

        addView(titleLabel)
        addView(button)
        addView(contentView)
    }

    override func constraintViews() {
        super.constraintViews()

        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),

            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 28),

            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        backgroundColor = .clear
    }
}
