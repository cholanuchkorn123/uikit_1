//
//  UIcolor+ext.swift
//  intro_uikit
//
//  Created by cholanuch on 29/3/2567 BE.
//

import UIKit

extension UIColor{
  static  func randomColor()->UIColor{
        let randomColor = UIColor(
            red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1
        )
        return randomColor
    }
}
