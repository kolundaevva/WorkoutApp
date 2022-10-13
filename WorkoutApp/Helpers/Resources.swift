//
//  Resources.swift
//  WorkoutApp
//
//  Created by Владислав Колундаев on 13.10.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")

        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")

        static let titleGray = UIColor(hexString: "#545C77")
    }

    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }

    enum Images {
        static let overview = UIImage(named: "overview_tab")
        static let session = UIImage(named: "session_tab")
        static let progress = UIImage(named: "progress_tab")
        static let settings = UIImage(named: "settings_tab")
    }

    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helveltica", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
