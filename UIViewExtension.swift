//
//  UIViewExtension.swift
//
//  Created by Sisov Alexandr on 10/22/19.
//  Copyright © 2019 Sisov Alexandr. All rights reserved.
//

import UIKit

protocol Nibable: class {
    static var nibName: String { get }
}

extension Nibable where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

extension UIView {
    
    func xibSetup() {
        let child = loadNib()
        addSubview(child)
        
        child.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            child.topAnchor.constraint( equalTo: child.superview!.topAnchor),
            child.bottomAnchor.constraint( equalTo: child.superview!.bottomAnchor),
            child.leadingAnchor.constraint( equalTo: child.superview!.leadingAnchor),
            child.trailingAnchor.constraint( equalTo: child.superview!.trailingAnchor)
            ])
    }
    
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
}
