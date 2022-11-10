//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class SessionController: BaseController {

    private let timerView = TimerView()

    private let timerDuration = 15.0

    override func navBarLeftButtonHandler() {
        if timerView.state == .isPaused || timerView.state == .isStopped {
            timerView.startTimer { [weak self] in
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self?.navBarRightButtonHandler()
                }
            }
        } else {
            timerView.pauseTimer()
        }

        timerView.state = timerView.state == .isRunning ? .isPaused : .isRunning

        let buttonTitle = timerView.state == .isPaused ? Resources.Strings.Session.leftStartButton : Resources.Strings.Session.leftPausedButton
        setTitleForNavBarItem(buttonTitle, at: .left)
    }

    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleForNavBarItem(Resources.Strings.Session.leftStartButton, at: .left)
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
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)

        addNavBarItem(at: .left, with: Resources.Strings.Session.leftStartButton)
        addNavBarItem(at: .right, with: Resources.Strings.Session.rightFinishButton)
        
        timerView.configure(with: timerDuration, progress: 0)
    }
}
