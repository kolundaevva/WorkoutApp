//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }

    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white

        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()

        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)

        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.session,
                                                     tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.settings,
                                                     tag: Tabs.settings.rawValue)

        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ],animated: false)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
