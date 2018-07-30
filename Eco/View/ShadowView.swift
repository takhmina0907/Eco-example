//
//  ShadowView.swift
//  Eco
//
//  Created by Takhmina Talipova on 7/29/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.awakeFromNib()
    }

}
