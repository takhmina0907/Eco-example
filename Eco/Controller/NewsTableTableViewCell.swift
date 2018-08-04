//
//  NewsTableTableViewCell.swift
//  Eco
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class NewsTableTableViewCell: UITableViewCell {


    @IBOutlet weak var newsImageV: UIImageView!
    
    @IBOutlet weak var newsTitleLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
