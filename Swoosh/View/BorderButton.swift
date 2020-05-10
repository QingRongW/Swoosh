//
//  BorderButton.swift
//  Swoosh
//
//  Created by Isa on 2020/5/2.
//  Copyright © 2020 QingRong. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
