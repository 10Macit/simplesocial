//
//  UIView+Extensions.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview(_:))
    }
}
