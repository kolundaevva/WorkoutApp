//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)

        addNavBarItem(at: .left, with: Resources.Strings.Progress.leftButton)
        addNavBarItem(at: .right, with: Resources.Strings.Progress.rightButton)
    }
}
