//
//  CustomLabel.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 1/2/20.
//  Copyright © 2020 chingoo. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)!
        self.commonInit()
    }
    
    func commonInit() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.backgroundColor = UIColor.white
        
    }
    
    
}
