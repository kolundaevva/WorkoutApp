//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class SessionController: BaseController {

    private let timerView: WABaseInfoView = {
        let view = WABaseInfoView(with: "Test", buttonTitle: "Test button".uppercased())
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)

        addNavBarItem(at: .left, with: Resources.Strings.Session.leftButton)
        addNavBarItem(at: .right, with: Resources.Strings.Session.rightButton)
    }
}

extension SessionController {
    override func setupViews() {
        super.setupViews()

        view.addView(timerView)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
    }
}
