//
//  UIViewControllerExtension.swift
//
//  Created by Sisov Alexandr on 10/1/19.
//  Copyright © 2019 Sisov Alexandr. All rights reserved.
//

import UIKit

extension UIViewController {
    func performSegue(withIdentifier: StoryboardSegue, sender: Any?) {
        performSegue(withIdentifier: withIdentifier.rawValue, sender: sender) 
    }
}
