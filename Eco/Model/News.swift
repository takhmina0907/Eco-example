//
//  News.swift
//  Eco
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import Foundation
import UIKit

struct News{
    var newsTitle: String
    var newsImage: UIImage!
    var newsFull: String
    
    init(_ newsTitle: String, _ newsImage: UIImage!,_ newsFull: String){
        self.newsTitle = newsTitle
        self.newsImage = newsImage
        self.newsFull = newsFull
    }
}
