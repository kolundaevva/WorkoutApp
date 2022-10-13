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

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session

        addNavBarItem(at: .left, with: "Pause")
        addNavBarItem(at: .right, with: "Finish")
    }
}
