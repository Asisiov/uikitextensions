//
//  UITableViewExtension.swift
//
//  Created by Sisov Alexandr on 9/30/19.
//  Copyright © 2019 Sisov Alexandr. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(type: T.Type, bundle: Bundle? = nil) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: type), for: indexPath) as! T
    }
    
    func register<T: UITableViewHeaderFooterView>(type: T.Type, bundle: Bundle? = nil) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forHeaderFooterViewReuseIdentifier: String(describing: type))
    }
    
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(with type: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: String(describing: type)) as! T
    }
    
}

