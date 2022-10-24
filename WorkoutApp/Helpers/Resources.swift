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
        static let secondary = UIColor(hexString: "#F0F3FF")

        static let titleGray = UIColor(hexString: "#545C77")
    }

    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview:
                    return "Overview"
                case .session:
                    return "Session"
                case .progress:
                    return "Progress"
                case .settings:
                    return "Settings"
                }
            }
        }

        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }

        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }

        enum Session {
            static let leftButton = "Pause"
            static let rightButton = "Finish"
        }

        enum Progress {
            static let leftButton = "Export"
            static let rightButton = "Details"
        }

        enum Settings {
            
        }
    }

    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview:
                    return UIImage(named: "overview_tab")
                case .session:
                    return UIImage(named: "session_tab")
                case .progress:
                    return UIImage(named: "progress_tab")
                case .settings:
                    return UIImage(named: "settings_tab")
                }
            }
        }

        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
    }

    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helveltica", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
