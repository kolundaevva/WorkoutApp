//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session

        addNavBarItem(at: .left, with: Resources.Strings.Session.leftButton)
        addNavBarItem(at: .right, with: Resources.Strings.Session.rightButton)
    }
}
