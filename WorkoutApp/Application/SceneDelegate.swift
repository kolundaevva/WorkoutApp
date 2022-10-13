//
//  SceneDelegate.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        let tapBarController = TabBarController()
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(frame: windowScene.screen.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tapBarController
        window?.makeKeyAndVisible()
    }
}

