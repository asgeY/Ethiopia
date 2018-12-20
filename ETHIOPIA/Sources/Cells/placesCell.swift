//
//  placesCell.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 12..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class placesCell: CollectionViewCell {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.textLabel.textColor = .darkGray

        self.detailTextLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.detailTextLabel.textColor = .darkGray
        
        self.imageView.layer.cornerRadius = 8
        self.imageView.layer.masksToBounds = true
    }
    
    override func reset() {
        super.reset()
        
        self.textLabel.text = nil
        self.detailTextLabel.text = nil
        self.imageView.image = nil
    }
}
