//
//  BlackBackground.swift
//  StarTrivia
//
//  Created by Shwetansh Srivastava on 12/03/20.
//  Copyright © 2020 Shwetansh Srivastava. All rights reserved.
//

import UIKit

class BlackBackground: UIView {
    
    // prepares the reciever after the view is loaded.
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}


class BlackBackgroundButton: UIButton {
    
    // prepares the reciever after the view is loaded.
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
