//
//  UIStoryboardExtension.swift
//
//  Created by Sisov Alexandr on 9/19/19.
//  Copyright © 2019 Sisov Aleksandr. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case profile
    case schedule
    case event
    case notification
    case bluetooth
    case backup
    case help
    case filter
    case graph
    case result
}

private extension UIStoryboard {
    convenience init(_ storyboard: Storyboard) {
        self.init(name: storyboard.rawValue.capitalized, bundle: .main)
    }
    func instantiateViewController<T: UIViewController>(with class: T.Type) -> T {
        return instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
}

extension UIStoryboard {
    static func profileViewController() -> ProfileViewController {
        return UIStoryboard(.profile).instantiateViewController(with: ProfileViewController.self)
    }
    static func scheduleViewController() -> ScheduleViewController {
        return UIStoryboard(.schedule).instantiateViewController(with: ScheduleViewController.self)
    }
    static func eventsViewController() -> EventsViewController {
        return UIStoryboard(.event).instantiateViewController(with: EventsViewController.self)
    }
    static func notificationViewController() -> NotificationViewController {
        return UIStoryboard(.notification).instantiateViewController(with: NotificationViewController.self)
    }
    static func bluetoothViewController() -> BluetoothViewController {
        return UIStoryboard(.bluetooth).instantiateViewController(with: BluetoothViewController.self)
    }
    static func backupViewController() -> BackupViewController {
        return UIStoryboard(.backup).instantiateViewController(with: BackupViewController.self)
    }
    static func helpViewController() -> HelpViewController {
        return UIStoryboard(.help).instantiateViewController(with: HelpViewController.self)
    }
    static func filterNavigationViewController() -> UIViewController {
        return UIStoryboard(.filter).instantiateInitialViewController()!
    }
    static func resultViewController() -> ResultViewController {
        return UIStoryboard(.result).instantiateViewController(with: ResultViewController.self)
    }
    static func graphViewController() -> GraphViewController {
        return UIStoryboard(.graph).instantiateViewController(with: GraphViewController.self)
    }
}
