//
//  UIApplicationExtension.swift
//
//  Created by Sisov Alexandr on 10/3/19.
//  Copyright © 2019 Sisov Alexandr. All rights reserved.
//

import UIKit

extension UIApplication {
    
    var window: UIWindow? {
        return UIApplication.shared.windows.filter { $0.isKeyWindow }.first
    }
    
    class func topViewController(controller: UIViewController? = UIApplication.shared.window?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
    
}
