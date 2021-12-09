//
//  CustomButton.swift
//  StudentPracticeProject
//
//  Created by Harsha Karanth on 9/29/21.
//

import Foundation
import SwiftUI

class CustomButton : UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, fontSize : CGFloat, color: UIColor) {
        super.init(frame: .zero)
        backgroundColor = color
        setTitle(title, for:.normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: fontSize)
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
