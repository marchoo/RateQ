//
//  StringExt.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 1/3/20.
//  Copyright © 2020 chingoo. All rights reserved.
//

import UIKit

extension String {
    
    func toDouble() -> Double? {
        
        return Double(self)
    }
    
    var isNumber: Bool {
        guard self.count > 0 else { return false }
        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9",]
        return Set(self).isSubset(of: nums)
    }
    
}


extension UIView {
    
    func takeScreenShot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        if image != nil {
            return image!
        }
        
        return UIImage()
    }
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, newAlpha: CGFloat) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: newAlpha)
    }
    

    static let lighterGray = UIColor(red: 213, green: 213, blue: 213, newAlpha: 1)
    
}
