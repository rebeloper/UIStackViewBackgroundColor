//
//  UIStackView+.swift
//  UIStackViewBackgroundColor
//
//  Created by Alex Nagy on 07/04/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

extension UIStackView {
    
    func addBackground(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
    
}
