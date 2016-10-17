//
//  MovieCell.swift
//  MovieViewer
//
//  Created by SGLMR on 15/10/16.
//  Copyright © 2016 CodePath. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

//        let backgroundView = UIView()
//        backgroundView.backgroundColor = UIColor.red
//        self.selectedBackgroundView = backgroundView
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red:0.89, green:0.45, blue:0.45, alpha:1.0)
        self.selectedBackgroundView = backgroundView
    }

}
