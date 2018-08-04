//
//  NewsDetailViewController.swift
//  Eco
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {

    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var NDImageView: UIImageView!
    
    @IBOutlet weak var NDTitleLabel: UILabel!
    
    @IBOutlet weak var NDFullLabel: UILabel!
    
    var newsDetailImage = UIImage()
    var newsDetailTitle =  " "
    var newsDetailFull = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NDImageView.image = newsDetailImage
        NDFullLabel.text = newsDetailFull
        NDTitleLabel.text = newsDetailTitle
        
        NDFullLabel.numberOfLines = 10000
        NDTitleLabel.numberOfLines = 4
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
