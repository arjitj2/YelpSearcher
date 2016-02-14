//
//  BusinessCell.swift
//  Yelp
//
//  Created by Arjit Jaiswal on 2/14/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbNailView: UIImageView!
    
    @IBOutlet weak var ratingImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var reviewLabel: UILabel!
        
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var cuisineLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbNailView.setImageWithURL(business.imageURL!)
            cuisineLabel.text = business.categories
            addressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbNailView.layer.cornerRadius = 3
        thumbNailView.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
