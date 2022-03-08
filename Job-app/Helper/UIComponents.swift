//
//  UIComponents.swift
//  Job-app
//
//  Created by MAC on 08/03/22.
//

import UIKit

@IBDesignable
class PrimaryButton: UIButton {
    
    @IBInspectable
    var titleColor: UIColor = #colorLiteral(red: 0.9176470588, green: 0.1333333333, blue: 0.1960784314, alpha: 1) {
        didSet {
            self.setTitleColor(titleColor, for: .normal)
        }
    }
    
    @IBInspectable
    var bgColor: UIColor? = nil {
        didSet {
            self.backgroundColor = bgColor ?? UIColor.white
        }
    }
    
    @IBInspectable
    var borderColor:UIColor = #colorLiteral(red: 0.9176470588, green: 0.1333333333, blue: 0.1960784314, alpha: 1) {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var borderWidth:CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var cornerRadius:CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var masksToBounds:Bool = true {
        didSet {
            layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable
    var shadowOpacity:Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    var shadowColor:UIColor = .clear {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius:CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable
    var shadowOffset:CGSize = CGSize(width: 0, height: 0) {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    var isEnable: Bool = true {
        didSet {
            self.isEnabled = self.isEnable
            if self.isEnabled {
                self.backgroundColor = UIColor.white
            } else {
                self.backgroundColor = UIColor.gray
            }
        }
    }
}
