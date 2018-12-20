//
//  SongCell.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class TourCell: CollectionViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.numberLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.numberLabel.textColor = .darkGray
        self.numberLabel.lineBreakMode = .byClipping
        
        self.textLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.textLabel.textColor = .black

        self.detailTextLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.detailTextLabel.textColor = .lightGray
    }
    
    override func reset() {
        super.reset()
        
        self.numberLabel.text = nil
        self.textLabel.text = nil
        self.detailTextLabel.text = nil
    }
}
